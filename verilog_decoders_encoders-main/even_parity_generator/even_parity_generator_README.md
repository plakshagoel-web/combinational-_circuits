# Even Parity Generator using 3-to-8 Decoder

## Overview

This project implements a 3-input even parity generator using a previously designed 3-to-8 decoder. The decoder is reused hierarchically, and selected decoder outputs are combined using OR logic to generate the parity bit.

## Logic Derivation

For inputs `A`, `B`, and `C`, the parity bit `P` is `1` when the number of 1s in the inputs is odd. This makes the total number of 1s even after adding the parity bit.

| A | B | C | P |
|---|---|---|---|
| 0 | 0 | 0 | 0 |
| 0 | 0 | 1 | 1 |
| 0 | 1 | 0 | 1 |
| 0 | 1 | 1 | 0 |
| 1 | 0 | 0 | 1 |
| 1 | 0 | 1 | 0 |
| 1 | 1 | 0 | 0 |
| 1 | 1 | 1 | 1 |

The rows where `P = 1` correspond to minterms 1, 2, 4 and 7:

`P = Σm(1,2,4,7)`

The Boolean expression is:

`P = A'B'C + A'BC' + AB'C' + ABC`

which simplifies to:

`P = A ⊕ B ⊕ C`

## Decoder-Based Implementation

The existing 3-to-8 decoder generates one active output for each input combination.

The required combinations are:

- `001` → `Y1`
- `010` → `Y2`
- `100` → `Y4`
- `111` → `Y7`

These outputs are ORed together:

`P = Y1 + Y2 + Y4 + Y7`

The decoder is instantiated hierarchically, so its logic does not need to be recreated inside the parity generator.

## Verilog

The design uses dataflow modeling for the final parity logic and hierarchical instantiation for the decoder.

```verilog
wire [7:0] Y;

decoder_3to8 D1(
    .A(A),
    .B(B),
    .C(C),
    .Y(Y)
);

assign P = Y[1] | Y[2] | Y[4] | Y[7];
```

## Verification

The testbench checks all 8 possible combinations of the three inputs. The waveform confirms the expected parity output for each combination.

## Synthesis

After synthesis in Vivado, the decoder-based RTL is optimized into a 3-input LUT (LUT3) with FPGA input and output buffers. This shows how the RTL description is mapped and optimized into FPGA resources.

## Power Report

- Total On-Chip Power: **0.661 W**
- Dynamic Power: **0.589 W**
- Device Static Power: **0.072 W**
- Signals: **0.016 W**
- Logic: **0.003 W**
- I/O: **0.570 W**
- Junction Temperature: **28.3 °C**

## What I Learned

- Derived a combinational circuit from a truth table.
- Converted the `P = 1` rows into minterms and understood `Σm(1,2,4,7)`.
- Understood why an even parity generator outputs `1` when the input contains an odd number of 1s.
- Reused an existing decoder through hierarchical design.
- Used selected decoder outputs to implement another combinational circuit.
- Understood how Vivado optimizes RTL logic into FPGA LUT resources.
- Verified all input combinations using a Verilog testbench and waveform simulation.
