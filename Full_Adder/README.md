# 1-bit Full Adder Design and Simulation using Verilog HDL

## Project Description

A 1-bit Full Adder is a combinational logic circuit that performs binary addition of three input bits. The circuit takes two input bits (A and B) along with a carry input (Cin) and produces two outputs: Sum and Carry output (Cout).

The design was developed using Verilog HDL and verified through RTL schematic generation and behavioral simulation using Xilinx ISE.

## Objectives

- To design a 1-bit Full Adder using Verilog HDL.
- To implement the design in Xilinx ISE.
- To generate RTL and gate-level schematic representations.
- To verify the functionality through simulation waveform analysis.

## Inputs

| Input | Description |
|---|---|
| A | First binary input |
| B | Second binary input |
| Cin | Carry input |

## Outputs

| Output | Description |
|---|---|
| Sum | Addition result output |
| Cout | Carry output |

## Boolean Expressions

**Sum = A ⊕ B ⊕ Cin**

**Cout = AB + BCin + ACin**

## Tools Used

- Xilinx ISE Design Suite
- ISim Simulator
- Verilog HDL

## Repository Structure

```text
1-bit-Full-Adder
│
├── Source_Code
│   ├── Full_Adder.v
│   └── full_adder_tb.v
│
├── Xilinx_Project
│   └── Full_Adder.xise
│
├── Schematic
│   ├── RTL_Schematic.png
│   └── Gate_Level_RTL_Schematic.png
│
├── Simulation
│   └── Simulation_Waveform.png
│
└── Report
    └── Full_Adder_Lab_Report.pdf


## Simulation Result

The Full Adder circuit was successfully simulated using ISim. All possible input combinations were applied, and the output waveform verified the correct Sum and Carry (Cout) generation.

## Result

The 1-bit Full Adder design was successfully implemented, synthesized, and verified using Verilog HDL and Xilinx ISE.

## Author

Name: Sakhawat Hossain 
Student ID: 22201077