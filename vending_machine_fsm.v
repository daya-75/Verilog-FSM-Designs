module vending_machine_fsm (
    input clk,
    input reset,
    input coin_inserted,
    input item_selected,
    output reg dispense_item,
    output reg return_coin,
    output reg display_status
);
    parameter IDLE = 3'b000,
              COIN_INSERTED = 3'b001,
              ITEM_SELECTED = 3'b010,
              DISPENSING_ITEM = 3'b011;

    reg [2:0] current_state, next_state;

    always @(posedge clk or posedge reset) begin
        if (reset)
            current_state <= IDLE;
        else
            current_state <= next_state;
    end
    always @(*) begin
        case (current_state)
            IDLE: begin
                if (coin_inserted)
                    next_state = COIN_INSERTED;
                else
                    next_state = IDLE;
            end

            COIN_INSERTED: begin
                if (item_selected)
                    next_state = ITEM_SELECTED;
                else
                    next_state = COIN_INSERTED;
            end

            ITEM_SELECTED: next_state = DISPENSING_ITEM;
            DISPENSING_ITEM: next_state = IDLE;

            default: next_state = IDLE;
        endcase
    end
    always @(*) begin
        dispense_item = 0;
        return_coin = 0;
        display_status = 0;

        case (current_state)
            COIN_INSERTED: display_status = 1;
            ITEM_SELECTED: dispense_item = 1;
            DISPENSING_ITEM: return_coin = 1;
        endcase
    end
endmodule
