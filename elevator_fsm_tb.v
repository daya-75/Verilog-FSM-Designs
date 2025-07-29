`timescale 1ns / 1ps

module elevator_fsm_tb;

    reg clk;
    reg reset;
    reg button_up;
    reg button_down;
    reg door_open;
    wire elevator_motor_up;
    wire elevator_motor_down;
    wire door_motor_open;
    wire door_motor_close;
    elevator_fsm uut (
        .clk(clk),
        .reset(reset),
        .button_up(button_up),
        .button_down(button_down),
        .door_open(door_open),
        .elevator_motor_up(elevator_motor_up),
        .elevator_motor_down(elevator_motor_down),
        .door_motor_open(door_motor_open),
        .door_motor_close(door_motor_close)
    );
    always #5 clk = ~clk;  
    initial begin
        clk = 0;
        reset = 1;
        button_up = 0;
        button_down = 0;
        door_open = 0;
        #10 reset = 0;
        #10 button_up = 1;
        #10 button_up = 0;
        #30 door_open = 1;
        #10 door_open = 0;
        #50;
        #10 button_down = 1;
        #10 button_down = 0;
        #30 door_open = 1;
        #10 door_open = 0;
        #50 $finish;
    end
endmodule
