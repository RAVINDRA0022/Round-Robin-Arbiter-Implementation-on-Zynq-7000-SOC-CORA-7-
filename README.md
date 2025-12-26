# Round Robin Arbiter Implementation on Zynq-7000 (Cora Z7)

## 1. Project Overview
This repository contains a high-speed, starvation-free **Round Robin Arbiter** implemented in Verilog HDL. The design is targeted for the **Xilinx Zynq-7000 SoC (Cora Z7-07S)**. 

In digital systems, arbitration is critical for managing shared resources (like AXI buses or Memory Controllers). This implementation uses a **rotating priority scheme** to ensure that every requesting master receives a fair share of the bandwidth, preventing any single master from "starving" others.

## 2. Technical Specifications
* **Architecture:** Shift-Prioritize-Unshift Logic.
* **FPGA Board:** Digilent Cora Z7 (ZYNQ-Z7000).
* **Clocking:** Driven by Zynq Processing System (PS) via `FCLK_CLK0`.
* **Language:** Verilog HDL.
* **Development Environment:** Linux (Ubuntu).
* **Tools:** Xilinx Vivado, Vim/Gvim for RTL Authoring.

## 3. Design Architecture
The arbiter logic is divided into four functional stages:
1. **Request Shifting:** The `req` vector is barrel-shifted based on the `rotate_ptr`.
2. **Priority Logic:** A fixed-priority encoder grants access to the highest priority bit (LSB) of the shifted vector.
3. **Grant Unshifting:** The grant is shifted back to align with the original master index.
4. **Pointer Update:** After a grant is issued, the priority pointer rotates to the next master ($G+1$) to maintain fairness.



## 4. Repository Structure
```text
├── src/
│   ├── round_robin_arbiter.v   # Core Arbitration Logic
│   └── top_wrapper.v           # Wrapper for Zynq PS Integration
├── tb/
│   └── round_robin_arbiter_tb.v # Self-checking Testbench
├── constraints/
│   └── cora_z7.xdc             # Physical Pin Constraints
└── README.md

Megasynth Technologies Pvt.Ltd © 2025
