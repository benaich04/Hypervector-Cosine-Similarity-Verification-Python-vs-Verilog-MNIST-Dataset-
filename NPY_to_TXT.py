import numpy as np
import os


# Define folder where npy hypervectors are stored
folder = r'C:\Path\To\Output_Folder' #ENTER PATH TO OUTPUT FOLDER


# List of all hypervector files
hypervector_files = [
    'class_0_hypervector.npy',
    'class_1_hypervector.npy',
    'class_2_hypervector.npy',
    'class_3_hypervector.npy',
    'class_4_hypervector.npy',
    'class_5_hypervector.npy',
    'class_6_hypervector.npy',
    'class_7_hypervector.npy',
    'class_8_hypervector.npy',
    'class_9_hypervector.npy',
    'test_sample_1.npy'
]


# Convert each file to txt
for file in hypervector_files:
    full_path = os.path.join(folder, file)
    vec = np.load(full_path)
    out_filename = os.path.join(folder, file.replace('.npy', '.txt'))
    np.savetxt(out_filename, vec, fmt='%.8f')
    print(f"Saved {out_filename}")
