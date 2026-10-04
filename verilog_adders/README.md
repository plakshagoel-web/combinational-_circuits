# Adders in Verilog

A collection of beginner-friendly Verilog implementations of fundamental
digital adders designed and simulated using **Xilinx Vivado 2025.2**.

This repository demonstrates the progression from basic combinational
logic to a multi-bit adder through modular design and Verilog
instantiation.

## PROJECTS INCLUDED:

### 1. Half Adder

A Half Adder adds two 1-bit binary numbers.

#### Inputs

-   A
-   B

#### Outputs

-   Sum
-   Carry

#### Logic

    Sum   = A ^ B
    Carry = A & B

**Files** - `half_adder.v` - `half_adder_testbench.v`

### 2. Full Adder

A Full Adder adds three 1-bit binary inputs.

#### Inputs

-   A
-   B
-   Cin

#### Outputs

-   Sum
-   Cout

#### Logic

    Sum  = A ^ B ^ Cin
    Cout = (A & B) | (B & Cin) | (A & Cin)

**Files** - `full_adder.v` - `full_adder_testbench.v`


### 3. 4-bit Ripple Carry Adder

A 4-bit Ripple Carry Adder is implemented by cascading four Full Adders.

The carry output of one Full Adder is connected to the carry input of
the next stage.

#### Inputs

-   A\[3:0\]
-   B\[3:0\]
-   Cin

#### Outputs

-   Sum\[3:0\]
-   Cout

**Files** - `fourbit_ripple_adder.v` - `testbench.v`

## Tools Used

-   Verilog HDL
-   Xilinx Vivado 2025.2

## Concepts Covered

-   Logic Gates
-   Half Adder
-   Full Adder
-   Module Instantiation
-   Ripple Carry Adder Architecture
-   Testbench Development
-   Functional Simulation
-   Waveform Analysis
-   RTL Schematic
-   Synthesis
-   FPGA Lookup Tables (LUTs)
-   Power Analysis

## Repository Contents

Each project contains: - Verilog source code - Testbench - Simulation
waveform - RTL schematic - Synthesized design
