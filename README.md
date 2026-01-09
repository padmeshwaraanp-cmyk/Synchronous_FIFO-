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

https://media.licdn.com/dms/image/v2/D5622AQHjlt4JjvZffw/feedshare-shrink_2048_1536/B56ZnxM4OQI0Aw-/0/1760688310400?e=1769644800&v=beta&t=autVldbjrhu1Qcc-9gAtC3dR7c9-Wnnb6TeYeD-CrMo

https://media.licdn.com/dms/image/v2/D5622AQF09NtAgouFeA/feedshare-shrink_1280/B56ZnxM4P1KIAs-/0/1760688310280?e=1769644800&v=beta&t=tibkMSQNLa-NYnIuQDSnbcgpN3HyLtHCC_3DW11-aKk

🧪 Verification

Verified functionality through simulation

Test scenarios include:

Write-only operations

Read-only operations

Simultaneous read and write

Full and empty boundary conditions

Waveform analysis used to validate timing and correctness

https://media.licdn.com/dms/image/v2/D5622AQHRZTau7jSLWA/feedshare-shrink_480/B56ZnxM4QDHQAY-/0/1760688310672?e=1769644800&v=beta&t=BszFlUy3MG7X0wxuw6nYGBR_iDGcEZ-hEFA5E-98voA

🛠️ Tools Used

HDL: Verilog / SystemVerilog

Simulation: Xilinx Vivado / Cadence Xcelium

Synthesis: Xilinx Vivado
