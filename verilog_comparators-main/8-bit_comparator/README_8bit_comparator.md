# 8-Bit Comparator

A parameterized 8-bit comparator implemented in Verilog using behavioral modeling. It compares two binary numbers and produces three outputs: equal, A greater than B, or A smaller than B.

## Logic

- `Y_equal = 1` when `A == B`
- `Y_Agreater = 1` when `A > B`
- `Y_Asmaller = 1` when `A < B`

The comparison is implemented using `if-else` statements inside an `always @(*)` block.

## Implementation

The module uses a parameter for the input width:

```verilog
module comparator_8bit #(parameter N=8)
```

This allows the same design to be reused for different bit widths.

## Verification

The testbench checks representative cases including:

- Equal inputs
- A greater than B
- A smaller than B
- Equal MSBs with different lower bits
- Different values near the upper range
- Maximum 8-bit value

The outputs were verified using the Vivado waveform.

## Synthesized Design

Vivado maps the behavioral comparison logic onto FPGA resources such as **LUTs** and **CARRY4** blocks. The synthesized schematic is more detailed than the RTL view because it shows the FPGA-oriented hardware implementation.

## Power Report

- **Total On-Chip Power:** 1.188 W
- **Dynamic Power:** 1.115 W
- **Static Power:** 0.073 W
- **Logic Power:** 0.020 W
- **Signal Power:** 0.091 W
- **I/O Power:** 1.003 W
- **Junction Temperature:** 30.9°C

The I/O power is the largest component of the estimated dynamic power in this report.

## What I Learned

- Implementing a comparator using **behavioral modeling**.
- Using **parameterization** to make the design reusable for different bit widths.
- Describing comparison logic directly instead of building the complete gate-level circuit.
- Understanding how Vivado maps behavioral comparison operations to FPGA resources during synthesis.
