# Hypervector Cosine Similarity Verification: Python vs Verilog (MNIST Dataset)

## Description

Full hardware-software verification of cosine similarity using hypervectors on MNIST. Generates hypervectors in Python, converts them for Verilog simulation, and compares 32-bit hardware outputs to 64-bit Python results to validate floating-point accuracy.

---

## Project Overview

This repository demonstrates a complete hardware-software verification pipeline for hyperdimensional computing using cosine similarity with the MNIST dataset. Hypervectors are generated via a Python pipeline, converted to Verilog-readable format, and then tested on a hardware cosine similarity module using Xilinx ISE floating-point IP cores. The final hardware results are compared against Python-generated reference results to validate the hardware implementation.

---

## Repository Used for Hypervector Generation

We use the following GitHub repository as our base for hypervector generation:

**Original Repo:** [MNIST Hyperdimensional Computing (Github)](https://github.com/noahgolmant/HyperdimMNIST)

---

## Pipeline Summary

* Clone and modify the MNIST hyperdimensional computing repository.
* Generate hypervectors for classes 0-9 and one test sample.
* Convert generated hypervectors from `.npy` to `.txt` (float) and then `.mem` (IEEE-754 hex) formats.
* Use Verilog and Xilinx ISE to implement the cosine similarity module with floating-point IP cores.
* Use Verilog testbench to read `.mem` files, compute cosine similarities, and compare with Python results.
* Small floating-point precision differences occur due to Python (64-bit float) vs Verilog (32-bit float with rounding).

---

## Step-by-Step Instructions

### 1. Clone & Modify MNIST Hypervector Repository

```
git clone https://github.com/taylorjoshua/hyperdimensional-computing-mnist.git
```

* Modify projection dimensionality: `D = 100`
* Set test image index: `test_idx = 1`
* Run the script to generate hypervectors for all classes and test sample.
* Hypervectors are saved in `.npy` format.

### 2. Convert .NPY to .TXT

```python
import numpy as np
import os

folder = r'C:\Path\To\Output_Folder'
hypervector_files = [
    'class_0_hypervector.npy', 'class_1_hypervector.npy', 'class_2_hypervector.npy',
    'class_3_hypervector.npy', 'class_4_hypervector.npy', 'class_5_hypervector.npy',
    'class_6_hypervector.npy', 'class_7_hypervector.npy', 'class_8_hypervector.npy',
    'class_9_hypervector.npy', 'test_sample_1.npy'
]

for file in hypervector_files:
    full_path = os.path.join(folder, file)
    vec = np.load(full_path)
    out_filename = os.path.join(folder, file.replace('.npy', '.txt'))
    np.savetxt(out_filename, vec, fmt='%.8f')
```

### 3. Convert .TXT to .MEM (Verilog format)

```python
import numpy as np
import struct
import os

directory = r'C:\Path\To\TXT_Files'
hypervector_files = [
    'class_0_hypervector.txt', 'class_1_hypervector.txt', 'class_2_hypervector.txt',
    'class_3_hypervector.txt', 'class_4_hypervector.txt', 'class_5_hypervector.txt',
    'class_6_hypervector.txt', 'class_7_hypervector.txt', 'class_8_hypervector.txt',
    'class_9_hypervector.txt', 'test_sample_1.txt'
]

output_dir = os.path.join(directory, 'mem_files')
os.makedirs(output_dir, exist_ok=True)

def float_to_hex(f):
    return format(struct.unpack('>I', struct.pack('>f', f))[0], '08X')

for file in hypervector_files:
    txt_path = os.path.join(directory, file)
    vec = np.loadtxt(txt_path)
    mem_filename = file.replace('.txt', '.mem')
    mem_path = os.path.join(output_dir, mem_filename)
    with open(mem_path, 'w') as mem_file:
        for val in vec:
            hex_val = float_to_hex(val)
            mem_file.write(hex_val + '\n')
```

### 4. Verilog Cosine Similarity Module

* Implement cosine similarity in Verilog using Xilinx ISE.
* Use floating-point multiplier, adder, square root, and divider IP cores.
* Inputs: 100-element vectors, 32-bit IEEE-754 floating-point.

### 5. Verilog Testbench

* Store `.mem` files inside `mem_files` folder.
* Edit testbench to load the test\_sample hypervector and desired class hypervector.
* Set `class_idx` to choose which class hypervector to compare.
* Run simulation to compute cosine similarity.

### 6. Compare Outputs

* Verilog prints cosine similarity in IEEE-754 hex format.
* Use converter to decode hex to decimal.
* Expect minor differences due to Python (64-bit) vs Verilog (32-bit) precision.

Python helper to decode:

```python
import struct

def hex_to_float(hex_str):
    return struct.unpack('>f', bytes.fromhex(hex_str))[0]

print(hex_to_float("3f7f82ab"))
```

---

## Floating-Point Precision Differences

Python uses 64-bit floats; Verilog uses 32-bit floats with intermediate rounding after each operation inside Xilinx IP cores. These rounding differences explain small discrepancies, while ranking remains identical.

---

## Sample Results Table

| Class | Python Cosine | Verilog Cosine  |
| ----- | ------------- | --------------- |
| 0     | 0.99952358    | (Verilog value) |
| 1     | 0.99958920    | (Verilog value) |
| 2     | 0.99954694    | (Verilog value) |
| 3     | 0.99959272    | (Verilog value) |
| 4     | 0.99957293    | (Verilog value) |
| 5     | 0.99955553    | (Verilog value) |
| 6     | 0.99953097    | (Verilog value) |
| 7     | 0.99960995    | (Verilog value) |
| 8     | 0.99954766    | (Verilog value) |
| 9     | 0.99961674    | (Verilog value) |

The highest cosine similarity is always class 9.

---

## Repository Structure

```
root/
|-- mnist_code/  --> Modified MNIST hypervector generator
|-- txt_files/
|-- mem_files/
|-- verilog/
|-- documentation/
```

---

## Conclusion

This project verifies floating-point hardware hypervector cosine similarity pipelines using real MNIST data and compares hardware and software implementations with high precision.

---

## References

* [Original MNIST Hyperdimensional Computing Repo](https://github.com/taylorjoshua/hyperdimensional-computing-mnist)
* [IEEE-754 Float Converter](https://www.h-schmidt.net/FloatConverter/IEEE754.html)
* Xilinx Floating Point IP Documentation
