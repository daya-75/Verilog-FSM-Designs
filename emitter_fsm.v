module elevator_fsm (
    input clk,
    input reset,
    input button_up,
    input button_down,
    input door_open,
    output reg elevator_motor_up,
    output reg elevator_motor_down,
    output reg door_motor_open,
    output reg door_motor_close
);

    parameter IDLE = 3'b000,
              MOVING_UP = 3'b001,
              MOVING_DOWN = 3'b010,
              OPENING_DOOR = 3'b011,
              CLOSING_DOOR = 3'b100;

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
                if (button_up)
                    next_state = MOVING_UP;
                else if (button_down)
                    next_state = MOVING_DOWN;
                else
                    next_state = IDLE;
            end

            MOVING_UP: begin
                if (door_open)
                    next_state = OPENING_DOOR;
                else
                    next_state = MOVING_UP;
            end

            MOVING_DOWN: begin
                if (door_open)
                    next_state = OPENING_DOOR;
                else
                    next_state = MOVING_DOWN;
            end

            OPENING_DOOR: next_state = CLOSING_DOOR;
            CLOSING_DOOR: next_state = IDLE;

            default: next_state = IDLE;
        endcase
    end
    always @(*) begin
        elevator_motor_up = 0;
        elevator_motor_down = 0;
        door_motor_open = 0;
        door_motor_close = 0;

        case (current_state)
            MOVING_UP: elevator_motor_up = 1;
            MOVING_DOWN: elevator_motor_down = 1;
            OPENING_DOOR: door_motor_open = 1;
            CLOSING_DOOR: door_motor_close = 1;
        endcase
    end

endmodule

