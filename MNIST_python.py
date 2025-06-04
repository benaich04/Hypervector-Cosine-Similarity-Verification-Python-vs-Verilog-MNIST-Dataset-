import numpy as np
from mnist import MNIST
from sklearn.model_selection import train_test_split
from sklearn.metrics.pairwise import cosine_similarity
from sklearn.metrics import accuracy_score
import os

# --------------------------
# 1️⃣ PARAMETERS
# --------------------------
D = 100  # hyperdimensional space size
IMG_LEN = 28
DATA_PATH = r'C:\Users\NYUAD\Downloads\test\data'
OUTPUT_DIR = r'C:\Users\NYUAD\Downloads\test\output_data\Hypervectors'


TEST_INDEX = 1  # <<< freely change this to any test sample you want

# --------------------------
# 2️⃣ LOAD & PREPARE DATA
# --------------------------
def shuffle(X, y):
    permutation = np.arange(X.shape[0])
    np.random.shuffle(permutation)
    return X[permutation], y[permutation]

def load_dataset():
    mndata = MNIST(DATA_PATH)
    X_train, labels_train = map(np.array, mndata.load_training())
    X_test, labels_test = map(np.array, mndata.load_testing())
    return X_train, labels_train, X_test, labels_test

# Load data
X_train, labels_train, X_test_full, labels_test_full = load_dataset()

# Combine both train and test for global shuffle
X_all = np.concatenate((X_train, X_test_full), axis=0)
y_all = np.concatenate((labels_train, labels_test_full), axis=0)

# Shuffle
X_all, y_all = shuffle(X_all, y_all)

# Split into new train/test
X_train, X_test, y_train, y_test = train_test_split(X_all, y_all, test_size=0.33)

NUM_SAMPLES = X_train.shape[0]

# --------------------------
# 3️⃣ GENERATE PROJECTION
# --------------------------
print("Generating random projection...")
proj = np.random.rand(D, IMG_LEN * IMG_LEN)

# --------------------------
# 4️⃣ PROJECT DATA
# --------------------------
def get_scenes(images, proj):
    return np.dot(images, proj.T)

print("Projecting training images...")
X_train_proj = get_scenes(X_train, proj)

print("Projecting testing images...")
X_test_proj = get_scenes(X_test, proj)

# --------------------------
# 5️⃣ COMPUTE CLASS HYPERVECTORS
# --------------------------
digit_vectors = np.zeros((10, D))
for i in range(NUM_SAMPLES):
    digit_vectors[y_train[i]] += X_train_proj[i]

print(f"\nShape of class hypervectors: {digit_vectors.shape}")
print(f"Example hypervector for class 0: {digit_vectors[0][:5]}...")  # print first 5 dims

# --------------------------
# 6️⃣ SAMPLE MATH OUTPUTS
# --------------------------

# 6.1 Dot product between first two training hypervectors
dot = np.dot(X_train_proj[0], X_train_proj[1])
print(f"\nDot product of first two training vectors: {dot}")

# 6.2 Cosine similarity between first two training hypervectors
cos_sim = cosine_similarity(X_train_proj[0].reshape(1, -1), X_train_proj[1].reshape(1, -1))[0, 0]
print(f"Cosine similarity between first two training vectors: {cos_sim}")

# 6.3 Cosine similarity of one test vector vs each class hypervector
test_vector = X_test_proj[TEST_INDEX].reshape(1, -1)
class_sims = cosine_similarity(test_vector, digit_vectors)[0]
print(f"\nCosine similarities of test sample {TEST_INDEX} to each class hypervector:")
for cls, sim in enumerate(class_sims):
    print(f"Class {cls}: {sim}")

# 6.4 True label and predicted label for that test sample
predicted_label = np.argmax(class_sims)
true_label = y_test[TEST_INDEX]
print(f"\nTest sample {TEST_INDEX}: True label = {true_label}, Predicted label = {predicted_label}")

# --------------------------
# 7️⃣ FINAL EVALUATION
# --------------------------

def classify(images, digit_vectors):
    similarities = cosine_similarity(images, digit_vectors)
    classifications = np.argmax(similarities, axis=1)
    return classifications

print("\nEvaluating model on full train and test sets...")
predictions_train = classify(X_train_proj, digit_vectors)
acc_train = accuracy_score(y_train, predictions_train)
print(f"Train accuracy: {acc_train}")

predictions_test = classify(X_test_proj, digit_vectors)
acc_test = accuracy_score(y_test, predictions_test)
print(f"Test accuracy: {acc_test}")

# --------------------------
# 8️⃣ SAVE RESULTS
# --------------------------
os.makedirs(OUTPUT_DIR, exist_ok=True)

np.save(os.path.join(OUTPUT_DIR, 'X_train.npy'), X_train_proj)
np.save(os.path.join(OUTPUT_DIR, 'y_train.npy'), y_train)
np.save(os.path.join(OUTPUT_DIR, 'X_test.npy'), X_test_proj)
np.save(os.path.join(OUTPUT_DIR, 'y_test.npy'), y_test)
np.save(os.path.join(OUTPUT_DIR, 'proj.npy'), proj)
np.save(os.path.join(OUTPUT_DIR, 'digit_vectors.npy'), digit_vectors)
print("Class hypervectors saved successfully!")

# ✅ Save individual class hypervectors
for cls in range(10):
    filename = f'class_{cls}_hypervector.npy'
    np.save(os.path.join(OUTPUT_DIR, filename), digit_vectors[cls].astype(np.float32))

# ✅ Save selected test hypervector
test_vector_fp32 = test_vector.flatten().astype(np.float32)
np.save(os.path.join(OUTPUT_DIR, f'test_sample_{TEST_INDEX}.npy'), test_vector_fp32)

print("Individual hypervectors saved successfully!")
print("\nProjected hyperdimensional data saved successfully!")
