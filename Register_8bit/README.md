# 8-bit Register Design using Verilog HDL

## Project Overview

This project implements an **8-bit Register** using **Verilog HDL**.  
The design was developed and simulated using **Xilinx ISE Design Suite 14.7** and **ISim Simulator**.

An 8-bit register is a sequential digital circuit that stores 8-bit binary data. The stored data is updated on the rising edge of the clock signal and can be cleared using the reset input.

---

## Objectives

- Design an 8-bit register using Verilog HDL.
- Understand the operation of sequential logic circuits.
- Implement data storage using flip-flops.
- Generate RTL schematic using Xilinx ISE.
- Verify the functionality through simulation.

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
| D[7:0] | 8-bit data input |
| CLK | Clock signal |
| RESET | Reset control signal |

### Output

| Signal | Description |
|--------|-------------|
| Q[7:0] | Stored 8-bit output |

---

## Design Description

The 8-bit register stores input data at the positive edge of the clock signal.

Operation:

- When `RESET = 1`, output `Q` becomes `00000000`.
- When `RESET = 0`, input data is stored into the register at every rising edge of `CLK`.

---

## Repository Structure
```
Register_8bit
│
├── Source_Code
│   └── Register_8bit.v
│
├── Testbench
│   └── Register_8bit_tb.v
│
├── Xilinx_Project
│   └── Register_8bit.xise
│
├── Schematic
│   ├── RTL_Schematic.png
│   └── Register_Internal_Circuit.png
│
├── Simulation
│   └── Simulation_Waveform.png
│
└── Report
    └── Register_8bit_Lab_Report.pdf
```

---

## Simulation Result

The 8-bit Register was simulated using the ISim simulator.

Different input patterns were applied with clock transitions to verify the storage operation.

| RESET | Input D | Output Q |
|-------|---------|----------|
| 1 | 00000000 | 00000000 |
| 0 | 10101010 | 10101010 |
| 0 | 11110000 | 11110000 |
| 0 | 01010101 | 01010101 |
| 1 | 11111111 | 00000000 |

The simulation waveform confirmed that the register correctly stores input data at the rising edge of the clock and clears the output when reset is activated.

---

## Conclusion

The 8-bit Register was successfully designed and simulated using Verilog HDL. The RTL schematic, synthesized internal circuit, and simulation waveform verified the correct operation of the sequential circuit.

The register successfully performed data storage and reset operations according to the applied control signals.

---

## Author

**Sakhawat Hossain**