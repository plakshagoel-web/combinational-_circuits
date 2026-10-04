# 3-to-8 Decoder --- Verilog

A simple 3-to-8 decoder implemented in Verilog using **behavioral
modeling** with a `case` statement. All eight input combinations were
simulated and the design was synthesized in Vivado.

## Overview

A 3-to-8 decoder takes three input bits and activates exactly one of its
eight outputs.

  A   B   C   Y\[7:0\]
  --- --- --- ----------
  0   0   0   00000001
  0   0   1   00000010
  0   1   0   00000100
  0   1   1   00001000
  1   0   0   00010000
  1   0   1   00100000
  1   1   0   01000000
  1   1   1   10000000

## Modeling

The decoder is written using **behavioral modeling** and a `case`
statement. Instead of writing eight separate Boolean expressions, each
input combination is directly mapped to its corresponding one-hot
output.

## Verification

The testbench checks all eight possible combinations:

-   `000 → 00000001`
-   `001 → 00000010`
-   `010 → 00000100`
-   `011 → 00001000`
-   `100 → 00010000`
-   `101 → 00100000`
-   `110 → 01000000`
-   `111 → 10000000`

The waveform confirms that only the selected decoder output goes HIGH
for each input combination.

## Vivado Results

The design was taken through RTL design, synthesis, synthesized design,
power estimation, and simulation.

At the RTL level, Vivado represents the fixed `case` mapping as an
**`RTL_ROM`** because the input-output relationship has
lookup-table-like behavior. No ROM was explicitly instantiated.

After synthesis, the design is implemented using **eight `LUT3`
resources**, with each LUT generating one decoder output from the three
inputs. The synthesized design also shows `IBUF` and `OBUF` blocks for
the FPGA input and output interfaces.

The power report is generated from the synthesized netlist, so the
values are tool-based estimates and can change with device and synthesis
conditions.

## What I Learned

-   How a behavioral `case` description can be recognized by Vivado as
    **ROM-like lookup behavior** at the RTL level.
-   Why the RTL schematic can show `RTL_ROM` even though no ROM was
    explicitly designed.
-   How the same decoder is mapped during synthesis into **eight
    LUT3s**, showing the difference between an RTL representation and
    the synthesized FPGA hardware.

## Files

-   `decoder_3to8.v` --- RTL design
-   `testbench_3to8_decoder.v` --- Testbench
-   `RTL_design,waveform,Synthesized_design,power_report
    
