`timescale 1ns / 1ps

module vending_machine_fsm_tb;

    reg clk;
    reg reset;
    reg coin_inserted;
    reg item_selected;
    wire dispense_item;
    wire return_coin;
    wire display_status;
    vending_machine_fsm uut (
        .clk(clk),
        .reset(reset),
        .coin_inserted(coin_inserted),
        .item_selected(item_selected),
        .dispense_item(dispense_item),
        .return_coin(return_coin),
        .display_status(display_status)
    );
    always #5 clk = ~clk;
    initial begin
        clk = 0;
        reset = 1;
        coin_inserted = 0;
        item_selected = 0;
        #10 reset = 0;
        #10 coin_inserted = 1;
        #10 coin_inserted = 0;
        #10 item_selected = 1;
        #10 item_selected = 0;
        #50;
        #10 reset = 1;
        #10 reset = 0;
        #30 $finish;
    end
endmodule
