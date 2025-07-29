# Verilog-FSM-Designs
Verilog implementation of two finite state machines (FSMs) for real-time control systems: an elevator controller (Moore FSM) and a vending machine controller (Mealy FSM), with complete testbenches and simulation support for Vivado.

# FSM Designs in Verilog

This repository contains the design and simulation of two finite state machines (FSMs) written in pure Verilog, targeted for FPGA implementation using Xilinx Vivado.

## 📁 Contents

1. `elevator_fsm.v` - Moore FSM for an elevator control system
2. `vending_machine_fsm.v` - Mealy FSM for a vending machine controller
3. `elevator_fsm_tb.v` - Testbench for elevator FSM
4. `vending_machine_fsm_tb.v` - Testbench for vending FSM

## 🧠 FSM Overview

### 🚦 Elevator FSM (Moore Model)
- **States**: IDLE, MOVING_UP, MOVING_DOWN, OPENING_DOOR, CLOSING_DOOR
- **Inputs**: `button_up`, `button_down`, `door_open`
- **Outputs**: `elevator_motor_up`, `elevator_motor_down`, `door_motor_open`, `door_motor_close`

### 🥤 Vending Machine FSM (Mealy Model)
- **States**: IDLE, COIN_INSERTED, ITEM_SELECTED, DISPENSING_ITEM
- **Inputs**: `coin_inserted`, `item_selected`
- **Outputs**: `dispense_item`, `return_coin`, `display_status`

## 🛠️ Tools Used
- Language: Verilog (IEEE 1364-2001)
- Simulator: Xilinx Vivado Simulator
- Target: FPGA (optional)

## 🚀 How to Run
1. Open Vivado and create a project.
2. Add the FSM module and its testbench.
3. Run behavioral simulation to observe waveforms.
4. Modify inputs in testbench for different scenarios.

---

### 👨‍💻 Author
Dayanand Bisanal
