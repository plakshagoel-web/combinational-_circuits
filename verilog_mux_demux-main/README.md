# Multiplexers and Demultiplexers using Verilog HDL

This project contains the Verilog implementation of commonly used combinational logic circuits: 2×1 Multiplexer, 4×1 Multiplexer, 1×2 Demultiplexer, and 1×4 Demultiplexer. Each design was verified through simulation and synthesized using Xilinx Vivado. The repository also includes RTL schematics, synthesized schematics, simulation waveforms, and power reports generated during the design flow.

## Project Contents

- Verilog source files
- Testbench files
- RTL Schematics
- Synthesized Schematics
- Simulation Waveforms
- Power Reports

## 2×1 Multiplexer

A 2×1 Multiplexer (MUX) is a combinational circuit that selects one of two input signals and transfers it to the output depending on the value of the select line. It is one of the basic building blocks used in digital systems for data selection and routing.

## 4×1 Multiplexer

A 4×1 Multiplexer extends the concept of a basic multiplexer by allowing one of four input signals to be selected. Two select lines determine which input is connected to the output. Multiplexers are widely used in processors, communication systems, and digital data routing.

## 1×2 Demultiplexer

A 1×2 Demultiplexer (DEMUX) performs the reverse operation of a multiplexer. It takes a single input and directs it to one of two output lines based on the select signal. Demultiplexers are commonly used for data distribution and signal routing.


## 1×4 Demultiplexer

A 1×4 Demultiplexer routes a single input signal to one of four output lines according to the select inputs. It is frequently used in digital communication systems, memory addressing, and control applications where one signal needs to be distributed to multiple destinations.


## Design Flow

1. Verilog HDL Coding
2. Functional Simulation
3. RTL Analysis
4. Logic Synthesis
5. Power Analysis


## Software Used

- Xilinx Vivado Design Suite
- Verilog HDL
- Xilinx Simulator (XSim)
