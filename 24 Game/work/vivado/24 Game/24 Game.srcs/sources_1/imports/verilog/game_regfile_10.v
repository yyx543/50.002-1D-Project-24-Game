/*
   This file was generated automatically by Alchitry Labs version 1.2.1.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module game_regfile_10 (
    input clk,
    input rst,
    input [3:0] read_address_1,
    input [3:0] read_address_2,
    input [3:0] write_address,
    input [15:0] write_data,
    input write_enable,
    output reg [15:0] read_data_1,
    output reg [15:0] read_data_2,
    output reg [15:0] integers,
    output reg [1:0] results,
    output reg [3:0] score,
    output reg [15:0] intinp,
    output reg [5:0] opinp
  );
  
  
  
  reg [15:0] M_integer_one_d, M_integer_one_q = 1'h0;
  reg [15:0] M_integer_two_d, M_integer_two_q = 1'h0;
  reg [15:0] M_integer_three_d, M_integer_three_q = 1'h0;
  reg [15:0] M_integer_four_d, M_integer_four_q = 1'h0;
  reg [15:0] M_result_d, M_result_q = 1'h0;
  reg [15:0] M_points_d, M_points_q = 1'h0;
  reg [15:0] M_timer_d, M_timer_q = 1'h0;
  reg [15:0] M_input_one_d, M_input_one_q = 1'h0;
  reg [15:0] M_input_two_d, M_input_two_q = 1'h0;
  reg [15:0] M_input_three_d, M_input_three_q = 1'h0;
  reg [15:0] M_input_four_d, M_input_four_q = 1'h0;
  reg [15:0] M_op_one_d, M_op_one_q = 1'h0;
  reg [15:0] M_op_two_d, M_op_two_q = 1'h0;
  reg [15:0] M_op_three_d, M_op_three_q = 1'h0;
  reg [15:0] M_results_timer_d, M_results_timer_q = 1'h0;
  reg [15:0] M_temp_d, M_temp_q = 1'h0;
  
  always @* begin
    M_temp_d = M_temp_q;
    M_integer_one_d = M_integer_one_q;
    M_integer_two_d = M_integer_two_q;
    M_op_one_d = M_op_one_q;
    M_op_three_d = M_op_three_q;
    M_integer_four_d = M_integer_four_q;
    M_points_d = M_points_q;
    M_op_two_d = M_op_two_q;
    M_result_d = M_result_q;
    M_timer_d = M_timer_q;
    M_input_three_d = M_input_three_q;
    M_input_one_d = M_input_one_q;
    M_input_two_d = M_input_two_q;
    M_input_four_d = M_input_four_q;
    M_results_timer_d = M_results_timer_q;
    M_integer_three_d = M_integer_three_q;
    
    if (write_enable) begin
      
      case (write_address)
        4'h0: begin
          M_integer_one_d = write_data;
        end
        4'h1: begin
          M_integer_two_d = write_data;
        end
        4'h2: begin
          M_integer_three_d = write_data;
        end
        4'h3: begin
          M_integer_four_d = write_data;
        end
        4'h4: begin
          M_result_d = write_data;
        end
        4'h5: begin
          M_points_d = write_data;
        end
        4'h6: begin
          M_timer_d = write_data;
        end
        4'h7: begin
          M_input_one_d = write_data;
        end
        4'h8: begin
          M_input_two_d = write_data;
        end
        4'h9: begin
          M_input_three_d = write_data;
        end
        4'ha: begin
          M_input_four_d = write_data;
        end
        4'hb: begin
          M_op_one_d = write_data;
        end
        4'hc: begin
          M_op_two_d = write_data;
        end
        4'hd: begin
          M_op_three_d = write_data;
        end
        4'he: begin
          M_results_timer_d = write_data;
        end
        4'hf: begin
          M_temp_d = write_data;
        end
      endcase
    end
    
    case (read_address_1)
      4'h0: begin
        read_data_1 = M_integer_one_q;
      end
      4'h1: begin
        read_data_1 = M_integer_two_q;
      end
      4'h2: begin
        read_data_1 = M_integer_three_q;
      end
      4'h3: begin
        read_data_1 = M_integer_four_q;
      end
      4'h4: begin
        read_data_1 = M_result_q;
      end
      4'h5: begin
        read_data_1 = M_points_q;
      end
      4'h6: begin
        read_data_1 = M_timer_q;
      end
      4'h7: begin
        read_data_1 = M_input_one_q;
      end
      4'h8: begin
        read_data_1 = M_input_two_q;
      end
      4'h9: begin
        read_data_1 = M_input_three_q;
      end
      4'ha: begin
        read_data_1 = M_input_four_q;
      end
      4'hb: begin
        read_data_1 = M_op_one_q;
      end
      4'hc: begin
        read_data_1 = M_op_two_q;
      end
      4'hd: begin
        read_data_1 = M_op_three_q;
      end
      4'he: begin
        read_data_1 = M_results_timer_q;
      end
      4'hf: begin
        read_data_1 = M_temp_q;
      end
      default: begin
        read_data_1 = 1'h0;
      end
    endcase
    
    case (read_address_2)
      4'h0: begin
        read_data_2 = M_integer_one_q;
      end
      4'h1: begin
        read_data_2 = M_integer_two_q;
      end
      4'h2: begin
        read_data_2 = M_integer_three_q;
      end
      4'h3: begin
        read_data_2 = M_integer_four_q;
      end
      4'h4: begin
        read_data_2 = M_result_q;
      end
      4'h5: begin
        read_data_2 = M_points_q;
      end
      4'h6: begin
        read_data_2 = M_timer_q;
      end
      4'h7: begin
        read_data_2 = M_input_one_q;
      end
      4'h8: begin
        read_data_2 = M_input_two_q;
      end
      4'h9: begin
        read_data_2 = M_input_three_q;
      end
      4'ha: begin
        read_data_2 = M_input_four_q;
      end
      4'hb: begin
        read_data_2 = M_op_one_q;
      end
      4'hc: begin
        read_data_2 = M_op_two_q;
      end
      4'hd: begin
        read_data_2 = M_op_three_q;
      end
      4'he: begin
        read_data_2 = M_results_timer_q;
      end
      4'hf: begin
        read_data_2 = M_temp_q;
      end
      default: begin
        read_data_2 = 1'h0;
      end
    endcase
    integers[0+3-:4] = M_integer_one_q[0+3-:4];
    integers[4+3-:4] = M_integer_two_q[0+3-:4];
    integers[8+3-:4] = M_integer_three_q[0+3-:4];
    integers[12+3-:4] = M_integer_four_q[0+3-:4];
    results = M_result_q[0+1-:2];
    score = M_points_q[0+3-:4];
    intinp[0+3-:4] = M_input_one_q[0+3-:4];
    intinp[4+3-:4] = M_input_two_q[0+3-:4];
    intinp[8+3-:4] = M_input_three_q[0+3-:4];
    intinp[12+3-:4] = M_input_four_q[0+3-:4];
    opinp[0+1-:2] = M_op_one_q[0+1-:2];
    opinp[2+1-:2] = M_op_two_q[0+1-:2];
    opinp[4+1-:2] = M_op_three_q[0+1-:2];
  end
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_integer_one_q <= 1'h0;
      M_integer_two_q <= 1'h0;
      M_integer_three_q <= 1'h0;
      M_integer_four_q <= 1'h0;
      M_result_q <= 1'h0;
      M_points_q <= 1'h0;
      M_timer_q <= 1'h0;
      M_input_one_q <= 1'h0;
      M_input_two_q <= 1'h0;
      M_input_three_q <= 1'h0;
      M_input_four_q <= 1'h0;
      M_op_one_q <= 1'h0;
      M_op_two_q <= 1'h0;
      M_op_three_q <= 1'h0;
      M_results_timer_q <= 1'h0;
      M_temp_q <= 1'h0;
    end else begin
      M_integer_one_q <= M_integer_one_d;
      M_integer_two_q <= M_integer_two_d;
      M_integer_three_q <= M_integer_three_d;
      M_integer_four_q <= M_integer_four_d;
      M_result_q <= M_result_d;
      M_points_q <= M_points_d;
      M_timer_q <= M_timer_d;
      M_input_one_q <= M_input_one_d;
      M_input_two_q <= M_input_two_d;
      M_input_three_q <= M_input_three_d;
      M_input_four_q <= M_input_four_d;
      M_op_one_q <= M_op_one_d;
      M_op_two_q <= M_op_two_d;
      M_op_three_q <= M_op_three_d;
      M_results_timer_q <= M_results_timer_d;
      M_temp_q <= M_temp_d;
    end
  end
  
endmodule