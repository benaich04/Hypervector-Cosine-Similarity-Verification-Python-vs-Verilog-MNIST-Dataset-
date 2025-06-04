import numpy as np
import struct
import os


# Set your directory where the .txt files are stored:
directory = r'C:\Users\NYUAD\Downloads\test\output_data\Hypervectors\TXT_files'  # <-- update this path as needed


# List of hypervector files
hypervector_files = [
    'class_0_hypervector.txt',
    'class_1_hypervector.txt',
    'class_2_hypervector.txt',
    'class_3_hypervector.txt',
    'class_4_hypervector.txt',
    'class_5_hypervector.txt',
    'class_6_hypervector.txt',
    'class_7_hypervector.txt',
    'class_8_hypervector.txt',
    'class_9_hypervector.txt',
    'test_sample_1.txt'
]


# Create output directory for .mem files
output_dir = os.path.join(directory, 'mem_files')
os.makedirs(output_dir, exist_ok=True)


# Conversion function: float -> IEEE-754 HEX
def float_to_hex(f):
    return format(struct.unpack('>I', struct.pack('>f', f))[0], '08X')


# Process each file
for file in hypervector_files:
    txt_path = os.path.join(directory, file)
    vec = np.loadtxt(txt_path)
    mem_filename = file.replace('.txt', '.mem')
    mem_path = os.path.join(output_dir, mem_filename)


    with open(mem_path, 'w') as mem_file:
        for val in vec:
            hex_val = float_to_hex(val)
            mem_file.write(hex_val + '\n')


    print(f"Converted {file} ➔ {mem_filename}")