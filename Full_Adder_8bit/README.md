# 8-bit Full Adder Design and Simulation

## Experiment Title
**Design and Simulation of 8-bit Full Adder using Verilog HDL**

## Project Description

This project presents the design and simulation of an 8-bit Full Adder circuit using Verilog HDL. The design was implemented and verified using Xilinx ISE Design Suite and ISim simulator.

The circuit performs binary addition of two 8-bit inputs along with an input carry and generates an 8-bit Sum output and a Carry output.

---

## Objectives

- Design an 8-bit Full Adder using Verilog HDL.
- Generate RTL schematic using Xilinx ISE.
- Perform behavioral simulation using ISim.
- Verify Sum and Carry outputs for different input combinations.

---

## Tools and Technologies

- **HDL:** Verilog HDL
- **Design Tool:** Xilinx ISE Design Suite 14.7
- **Simulation Tool:** ISim Simulator

---

## Input and Output

### Inputs

| Signal | Description |
|--------|-------------|
| A[7:0] | First 8-bit binary input |
| B[7:0] | Second 8-bit binary input |
| Cin | Input carry |

### Outputs

| Signal | Description |
|--------|-------------|
| Sum[7:0] | 8-bit addition result |
| Cout | Final carry output |

---

## Project Structure

```
Full_Adder_8bit
│
├── Source_Code
│   └── Full_Adder_8bit.v
│
├── Testbench
│   └── Full_Adder_8bit_tb.v
│
├── Xilinx_Project
│   └── Full_Adder_8bit.xise
│
├── Schematic
│   ├── RTL_Schematic.png
│   └── Synthesized_RTL_Schematic.png
│
├── Simulation
│   └── Simulation_Waveform.png
│
└── Report
    └── Full_Adder_8bit_Lab_Report.pdf
```

---

## Design Equation

```
{Cout, Sum} = A + B + Cin
```

---

## Simulation Result

The 8-bit Full Adder was successfully simulated using ISim simulator.

Different input combinations were applied to verify the correctness of Sum and Carry outputs.

Example test cases:

| A | B | Cin | Sum | Cout |
|---|---|-----|-----|------|
| 00 | 00 | 0 | 00 | 0 |
| FF | 01 | 0 | 00 | 1 |
| 0F | 01 | 0 | 10 | 0 |
| 55 | AA | 0 | FF | 0 |
| 9D | 64 | 0 | 01 | 1 |
| 10 | 20 | 1 | 31 | 0 |

All test cases produced the expected output.

---

## Conclusion

The 8-bit Full Adder was successfully designed using Verilog HDL and verified through Xilinx ISE simulation. The RTL schematic and waveform analysis confirmed the correct operation of the designed circuit.

---

## Author

**Sakhawat Hossain**