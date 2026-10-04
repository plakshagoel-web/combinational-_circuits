# 4-Bit Magnitude Comparator

A 4-bit magnitude comparator that compares two 4-bit binary numbers and indicates whether **A is equal to, greater than, or smaller than B**.

This project extends the 2-bit comparator, but uses **dataflow modelling** instead of gate-level modelling.

## Logic

The comparison starts from the **MSB** because it has the highest priority. Lower bits are considered only when the higher bits are equal.

### A = B

All corresponding bits must be equal:

```text
(A3 XNOR B3) · (A2 XNOR B2) · (A1 XNOR B1) · (A0 XNOR B0)
```

### A > B

A is greater when the first unequal bit from the MSB is `1` in A and `0` in B:

```text
(A3·B3') +
(A3 XNOR B3)(A2·B2') +
(A3 XNOR B3)(A2 XNOR B2)(A1·B1') +
(A3 XNOR B3)(A2 XNOR B2)(A1 XNOR B1)(A0·B0')
```

### A < B

The same priority is followed in the opposite direction: the first unequal bit from the MSB must be `0` in A and `1` in B.

## Modelling

This comparator was implemented using **dataflow modelling** with continuous `assign` statements.

Compared with the 2-bit gate-level implementation, this reduced the amount of explicit wiring and intermediate signals. The Boolean expressions could be written directly using Verilog operators such as `~`, `&`, `|`, and `~^`.

## Verification

The following cases were checked in simulation:

| A | B | Expected result |
|---|---|---|
| `0000` | `0000` | A = B |
| `1000` | `0000` | A > B |
| `0000` | `1000` | A < B |
| `0100` | `0000` | A > B |
| `1000` | `1100` | A < B |
| `1110` | `1100` | A > B |
| `1100` | `1110` | A < B |
| `0001` | `0000` | A > B |
| `1110` | `1111` | A < B |

These cases cover equality and comparisons decided at different bit positions.

## Synthesis & Power

The design was synthesized in **Xilinx Vivado** and the synthesized design was checked to confirm the generated hardware implementation.

Power estimation was also performed after synthesis.

- **Total On-Chip Power:** 1.188 W
- **Dynamic Power:** 1.115 W
- **Logic Power:** 0.020 W
- **Signal Power:** 0.091 W
- **I/O Power:** 1.003 W
- **Device Static Power:** 0.073 W
- **Junction Temperature:** 30.9°C

The I/O component is the largest part of the estimated power in this report. The power report has a **low confidence level**, so these values should be treated as an early estimate rather than final implementation power.

## What I Learned

- How to move from gate-level implementation to **dataflow modelling**.
- How to represent comparator logic directly using Verilog expressions.
- How dataflow modelling reduces the circuit description complexity compared with explicitly connecting gates and wires.
- How to connect individual RTL inputs to indexed bits of a testbench vector during module instantiation.
- How the same comparator logic can be described using a different modelling style without changing its functionality.

## Project Files

- `comparator_4bit.v` — 4-bit comparator using dataflow modelling
- `testbench_comparator_4bit.v` — simulation testbench
- RTL_design,waveform,Synthesized_design,power_report

