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

```bash
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

## Example Run (Full Debug Session)

During execution, multiple screenshots are taken to illustrate the full flow:

### 1. Python hypervector generation

* Screenshot showing MNIST hypervector generation with all class cosine similarities printed.
  ![Capture2](https://github.com/user-attachments/assets/1a7d2be5-7cbf-4658-ba48-1597be437fd9)


### 2. NPY to TXT Conversion

* Screenshot showing the conversion script successfully saving `.txt` files.
![451306642-8923d5ea-4d32-4b7e-9eaa-967423fca0df](https://github.com/user-attachments/assets/78b2d14f-95ad-4ef1-b3a6-4cb018843b5d)


### 3. TXT to MEM Conversion

* Screenshot showing the MEM file generation script producing `.mem` files for Verilog.
![451306828-c2b60448-9701-4826-abdc-64ca231fc225](https://github.com/user-attachments/assets/1c40d4e8-dcd1-43a5-b157-b1af2c107c64)


### 4. Verilog Testbench Execution

* Screenshot of the ISE simulation console displaying cosine similarity results per class, printed in IEEE-754 hex.
![Design sans titre](https://github.com/user-attachments/assets/0ede34f9-1934-4778-8d9b-203679ce2baa)


### 5. Result Table Construction
* Screenshot of all extracted hex values converted back to floating-point decimal values.
* A final result table is built comparing Python and Verilog values side-by-side.

![451308174-eaa74d21-7984-4503-8a3b-6e3f56e8f468](https://github.com/user-attachments/assets/892bbbfd-d10a-4d1e-8236-6cbbfab1a649)



---

## Sample Results Table
## Sample Results Table

| Class | Verilog Cosine | Python Cosine |
| ----- | -------------- | -------------- |
| 0     | 0.9995235800743103 | 0.998731353427 |
| 1     | 0.999589204788208  | 0.998367426298106 |
| 2     | 0.9995469450950623 | 0.99886719161406 |
| 3     | 0.9995927214622498 | 0.99886745355115 |
| 4     | 0.9995729327201843 | 0.998666796084037 |
| 5     | 0.9995555281639099 | 0.99844809179551 |
| 6     | 0.9995309710502625 | 0.99847728275918 |
| 7     | 0.9996099472045898 | 0.998536795741595 |
| 8     | 0.9995476603507996 | 0.99850609066405 |
| 9     | 0.9996167421340942 | 0.998586594860889 |


The highest cosine similarity is always class 9, followed by Classes 7, 3 etc..

---

## Repository Structure

```bash
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

⚠ Important Note on Precision Differences
Verilog simulations compute cosine similarity fully in IEEE-754 single precision (32-bit), while Python performs all operations by default in double precision (64-bit). As a result, small numerical differences appear in the final cosine similarity outputs. These variations remain fully consistent with IEEE-754 rounding behavior. Additionally, the Verilog floating-point IP cores apply intermediate rounding at each pipeline stage (e.g., after every multiplication, addition, square root), which further contributes to these slight deviations. Despite this, the final classification ranking remains identical between Python and Verilog.

---

## References

* [Original MNIST Hyperdimensional Computing Repo](https://github.com/noahgolmant/HyperdimMNIST)
* [IEEE-754 Float Converter](https://www.h-schmidt.net/FloatConverter/IEEE754.html)
* [Xilinx Floating Point IP Documentation](https://docs.amd.com/v/u/en-US/pg060-floating-point)
