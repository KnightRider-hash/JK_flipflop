# JK_Flip-Flop

This repository contains a **Verilog HDL implementation of a JK Flip-Flop with:
- Positive-edge triggered clock
- Asynchronous active-high reset
- Toggle functionality when both inputs are high

The design is synthesizable and suitable for FPGA/ASIC learning, simulations, and digital design practice.
## **Inputs**
- J input
- K input
- clk : Clock input (positive edge triggered)
- reset : Asynchronous active-high reset

### **Output**
- `q` : Flip-flop output

## JK Flip-Flop Truth Table

| J | K | Next State (Qₙ₊₁) | Operation |
|---|---|------------------|----------|
| 0 | 0 | Qₙ | No Change |
| 0 | 1 | 0 | Reset |
| 1 | 0 | 1 | Set |
| 1 | 1 | ~Qₙ | Toggle |
