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

## 🚀 How to Simulate
1. Open Vivado and create a project.
2. Add the FSM module and its testbench.
3. Run behavioral simulation to observe waveforms.
4. Modify inputs in testbench for different scenarios.

---

## 📈Sample Waveforms and Schematic

1. UP_COUNTER:
   
   a) Schematic: https://drive.google.com/file/d/1TltjLKl-RxdlmEEj-j4BDrA4MILSxVku/view?usp=drive_link

   b) Sample Waveform:<img width="1511" height="405" alt="Screenshot 2025-07-23 091738" src="https://github.com/user-attachments/assets/49216d26-4ffc-44f3-a537-a27ad727f08c" />

   
3. INPUT_TRIGGERED_FSM:

   a) Schematic: https://drive.google.com/file/d/1ixNxc8fbJB55czOIJDbfkLyJQOKS-PNH/view?usp=drive_link
   
   b) Sample Waveform: <img width="1514" height="340" alt="Screenshot 2025-07-29 200916" src="https://github.com/user-attachments/assets/9eb752aa-6f90-4576-a1d5-8a88379ef6bb" />

   
---

### 👨‍💻 Author
Dayanand Bisanal
