# 2-Bit Magnitude Comparator — Verilog

A small 2-bit magnitude comparator implemented in Verilog. The circuit compares two 2-bit numbers and determines whether **A is equal to, smaller than, or greater than B**.

I built this using **gate-level modelling** instead of directly using the `>` / `<` operators. The main goal was to understand how the comparator logic is actually built from gates and how that logic appears after synthesis.

## What the circuit does

The inputs are:

- `A = A1 A0`
- `B = B1 B0`

The outputs are:

- `Y_equal` → `1` when `A = B`
- `Y_lessA` → `1` when `A < B`
- `Y_greaterA` → `1` when `A > B`

For every valid input combination, only one of these outputs is high.


## Comparator Logic

A 2-bit comparator checks the **MSB first** because it has the highest significance. The LSB is checked only when the two MSBs are equal.

### A = B

Both bits must match:

```text
Y_equal = (A1 XNOR B1) · (A0 XNOR B0)
```

So I first generate:

```text
msb_equal = A1 XNOR B1
lsb_equal = A0 XNOR B0
```

and then:

```text
Y_equal = msb_equal · lsb_equal
```

### A < B

There are two possible cases.

**Case 1 — MSB decides the result**

```text
A1 = 0, B1 = 1
```

Then A is smaller regardless of the LSB:

```text
A1' · B1
```

**Case 2 — MSBs are equal, so compare the LSBs**

```text
A1 = B1
A0 = 0, B0 = 1
```

Therefore:

```text
(A1 XNOR B1) · A0' · B0
```

Final expression:

```text
Y_lessA = A1'B1 + (A1 XNOR B1)A0'B0
```

### A > B

Again, there are two cases.

**Case 1 — MSB decides the result**

```text
A1 = 1, B1 = 0
```

```text
A1 · B1'
```

**Case 2 — MSBs are equal, so compare the LSBs**

```text
A1 = B1
A0 = 1, B0 = 0
```

```text
(A1 XNOR B1) · A0 · B0'
```

Final expression:

```text
Y_greaterA = A1B1' + (A1 XNOR B1)A0B0'
```


## Input Cases Tested

All **16 possible combinations** of two 2-bit numbers were simulated.

| A | B | Result |
|---|---|---|
| 00 | 00 | A = B |
| 00 | 01 | A < B |
| 00 | 10 | A < B |
| 00 | 11 | A < B |
| 01 | 00 | A > B |
| 01 | 01 | A = B |
| 01 | 10 | A < B |
| 01 | 11 | A < B |
| 10 | 00 | A > B |
| 10 | 01 | A > B |
| 10 | 10 | A = B |
| 10 | 11 | A < B |
| 11 | 00 | A > B |
| 11 | 01 | A > B |
| 11 | 10 | A > B |
| 11 | 11 | A = B |


## Verilog Implementation

This project uses **gate-level modelling**. Instead of writing the comparison directly, the Boolean logic was broken into individual gates:

```verilog
and
or
not
xnor
```

One useful part of the implementation was deciding which intermediate signals should be reused. For example, `msb_equal` is generated once and used by both the `A < B` and `A > B` logic.

I also moved from generic wire names to meaningful names such as:

```text
msb_equal
lsb_equal
msb_greater
lsb_greater
msb_smaller
lsb_smaller
```

This became especially useful because the comparator has several conditions and the circuit gets harder to follow as more gates are added.


## Design & Simulation

The design was taken through the usual Vivado flow:

```text
Verilog → RTL Design → Synthesis → Simulation → Power Analysis
```

The RTL and synthesized schematics, along with the simulation waveform, are included in the project folder.

The testbench checks all 16 possible input combinations and the waveform confirms the expected `A = B`, `A < B` and `A > B` outputs.


## Power Report

The synthesized design gave the following early power estimate:

| Parameter | Value |
|---|---:|
| Total On-Chip Power | **1.166 W** |
| Dynamic Power | **1.093 W** |
| Device Static Power | **0.073 W** |
| Signal Power | **0.067 W** |
| Logic Power | **0.009 W** |
| I/O Power | **1.017 W** |
| Junction Temperature | **30.8°C** |
| Ambient Temperature | **25.0°C** |

### Understanding the result

The total power is:

```text
Total Power = Dynamic Power + Static Power
            = 1.093 W + 0.073 W
            = 1.166 W
```

**Dynamic power (1.093 W)** comes from circuit activity and switching. In this report it is mainly made up of I/O, signal and logic power.

The largest component here is **I/O power (1.017 W)**, while the actual reported **logic power is only 0.009 W**. So the 1.017 W figure should not be interpreted as the comparator logic itself consuming 1.017 W.

**Static power (0.073 W)** is the power associated with the FPGA device even when the logic is not actively switching.

The estimated **junction temperature is 30.8°C** at an ambient temperature of 25°C.

> Vivado reports this as an early estimate from the synthesized netlist, with a **Low confidence level**. The values can change after implementation and with more accurate switching activity and constraints.


## What I Learned

The main new learning from this project was **how to build a multi-bit comparator from basic gates instead of treating comparison as a single operation**.

- How **MSB priority** controls the comparison and when the LSB actually needs to be checked.
- How to reuse an equality signal (`msb_equal`) in multiple comparison paths.
- How to decide the intermediate wires and structure of a circuit when the number of gates starts increasing.
- How to translate the comparator's cases into separate Boolean expressions for `A < B` and `A > B`.
- How gate-level modelling becomes more difficult as circuit complexity increases, and why clear signal naming matters.
- How to interpret the power breakdown of a synthesized design instead of only looking at the total power number.

## Files

```text
comparator_2bit.v
testbench_2bit_comparator.v
RTL_design
waveform
Synthesized_design
Power_report
```
