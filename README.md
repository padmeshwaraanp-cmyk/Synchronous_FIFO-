📖 Overview

This repository contains the RTL design and verification of a fully synchronous FIFO (First-In First-Out) buffer implemented using Verilog/SystemVerilog. The FIFO is designed for reliable data transfer between modules operating on the same clock domain, commonly used in SoC and FPGA designs.

⚙️ Features

Fully synchronous design (single clock for read and write)

Parameterized data width and FIFO depth

Efficient read and write pointer logic

Accurate Full and Empty flag generation

Supports simultaneous read and write

Clean, synthesizable RTL code

🧠 Design Details

Implemented using register-based memory

Binary counters for read/write pointers

Full and empty conditions derived from pointer comparison

All operations synchronized to the rising edge of the clock

Reset initializes pointers and status flags

<img width="388" height="584" alt="image" src="https://github.com/user-attachments/assets/b8dc124d-46af-4780-ba5f-d3329da2ecf8" />

<img width="468" height="523" alt="image" src="https://github.com/user-attachments/assets/1a204d7b-cd3e-4d48-8010-06763504bae8" />



🧪 Verification

Verified functionality through simulation

Test scenarios include:

Write-only operations

Read-only operations

Simultaneous read and write

Full and empty boundary conditions

Waveform analysis used to validate timing and correctness

<img width="374" height="551" alt="image" src="https://github.com/user-attachments/assets/2a22d906-ad3e-47ff-8ed3-2c35b5122593" />


🛠️ Tools Used

HDL: Verilog / SystemVerilog

Simulation: Xilinx Vivado / Cadence Xcelium

Synthesis: Xilinx Vivado
