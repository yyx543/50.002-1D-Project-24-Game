/*
   This file was generated automatically by Alchitry Labs version 1.2.1.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module game_beta_2 (
    input clk,
    input rst,
    input confirm_button,
    input reset_button,
    input button1,
    input button2,
    input button3,
    input button4,
    input plus_button,
    input sub_button,
    input mul_button,
    output reg timer_decrease,
    output reg timer_set_sixty,
    output reg [15:0] integers,
    output reg [1:0] results,
    output reg [3:0] score,
    output reg [15:0] intinp,
    output reg [5:0] opinp
  );
  
  
  
  wire [16-1:0] M_regfile_read_data_1;
  wire [16-1:0] M_regfile_read_data_2;
  wire [16-1:0] M_regfile_integers;
  wire [2-1:0] M_regfile_results;
  wire [4-1:0] M_regfile_score;
  wire [16-1:0] M_regfile_intinp;
  wire [6-1:0] M_regfile_opinp;
  reg [4-1:0] M_regfile_read_address_1;
  reg [4-1:0] M_regfile_read_address_2;
  reg [4-1:0] M_regfile_write_address;
  reg [16-1:0] M_regfile_write_data;
  reg [1-1:0] M_regfile_write_enable;
  game_regfile_10 regfile (
    .clk(clk),
    .rst(rst),
    .read_address_1(M_regfile_read_address_1),
    .read_address_2(M_regfile_read_address_2),
    .write_address(M_regfile_write_address),
    .write_data(M_regfile_write_data),
    .write_enable(M_regfile_write_enable),
    .read_data_1(M_regfile_read_data_1),
    .read_data_2(M_regfile_read_data_2),
    .integers(M_regfile_integers),
    .results(M_regfile_results),
    .score(M_regfile_score),
    .intinp(M_regfile_intinp),
    .opinp(M_regfile_opinp)
  );
  wire [6-1:0] M_sm_alufn;
  wire [2-1:0] M_sm_asel;
  wire [2-1:0] M_sm_bsel;
  wire [2-1:0] M_sm_wdsel;
  wire [1-1:0] M_sm_we;
  wire [4-1:0] M_sm_ra;
  wire [4-1:0] M_sm_rb;
  wire [4-1:0] M_sm_rc;
  wire [2-1:0] M_sm_numsel;
  wire [1-1:0] M_sm_randsel;
  wire [1-1:0] M_sm_timer_decrease;
  wire [1-1:0] M_sm_timer_set_sixty;
  reg [16-1:0] M_sm_rbdata;
  reg [1-1:0] M_sm_st;
  reg [1-1:0] M_sm_confirm_button;
  reg [1-1:0] M_sm_reset_button;
  reg [1-1:0] M_sm_button1;
  reg [1-1:0] M_sm_button2;
  reg [1-1:0] M_sm_button3;
  reg [1-1:0] M_sm_button4;
  reg [1-1:0] M_sm_plus_button;
  reg [1-1:0] M_sm_sub_button;
  reg [1-1:0] M_sm_mul_button;
  final_state_machine_11 sm (
    .clk(clk),
    .rst(rst),
    .rbdata(M_sm_rbdata),
    .st(M_sm_st),
    .confirm_button(M_sm_confirm_button),
    .reset_button(M_sm_reset_button),
    .button1(M_sm_button1),
    .button2(M_sm_button2),
    .button3(M_sm_button3),
    .button4(M_sm_button4),
    .plus_button(M_sm_plus_button),
    .sub_button(M_sm_sub_button),
    .mul_button(M_sm_mul_button),
    .alufn(M_sm_alufn),
    .asel(M_sm_asel),
    .bsel(M_sm_bsel),
    .wdsel(M_sm_wdsel),
    .we(M_sm_we),
    .ra(M_sm_ra),
    .rb(M_sm_rb),
    .rc(M_sm_rc),
    .numsel(M_sm_numsel),
    .randsel(M_sm_randsel),
    .timer_decrease(M_sm_timer_decrease),
    .timer_set_sixty(M_sm_timer_set_sixty)
  );
  reg [26:0] M_one_second_d, M_one_second_q = 1'h0;
  wire [4-1:0] M_int_gen_int_input;
  reg [1-1:0] M_int_gen_randsel;
  reg [2-1:0] M_int_gen_numsel;
  input_integers_12 int_gen (
    .clk(clk),
    .rst(rst),
    .randsel(M_int_gen_randsel),
    .numsel(M_int_gen_numsel),
    .int_input(M_int_gen_int_input)
  );
  
  wire [1-1:0] M_alu_z;
  wire [1-1:0] M_alu_v;
  wire [1-1:0] M_alu_n;
  wire [16-1:0] M_alu_alu;
  reg [6-1:0] M_alu_alufn;
  reg [16-1:0] M_alu_a;
  reg [16-1:0] M_alu_b;
  game_alu_13 alu (
    .alufn(M_alu_alufn),
    .a(M_alu_a),
    .b(M_alu_b),
    .z(M_alu_z),
    .v(M_alu_v),
    .n(M_alu_n),
    .alu(M_alu_alu)
  );
  
  always @* begin
    M_one_second_d = M_one_second_q;
    
    if (M_one_second_q >= 27'h5f5e100) begin
      M_sm_st = 1'h1;
      M_one_second_d = 27'h0000000;
    end else begin
      M_sm_st = 1'h0;
      M_one_second_d = M_one_second_q + 1'h1;
    end
    M_alu_alufn = M_sm_alufn;
    
    case (M_sm_asel)
      2'h0: begin
        M_alu_a = M_regfile_read_data_1;
      end
      2'h1: begin
        M_alu_a = 1'h1;
      end
      2'h2: begin
        M_alu_a = 2'h2;
      end
      2'h3: begin
        M_alu_a = 2'h3;
      end
      default: begin
        M_alu_a = M_regfile_read_data_1;
      end
    endcase
    
    case (M_sm_bsel)
      2'h0: begin
        M_alu_b = M_regfile_read_data_2;
      end
      2'h1: begin
        M_alu_b = 5'h18;
      end
      2'h2: begin
        M_alu_b = 1'h0;
      end
      2'h3: begin
        M_alu_b = 1'h1;
      end
      default: begin
        M_alu_b = M_regfile_read_data_2;
      end
    endcase
    
    case (M_sm_wdsel)
      2'h0: begin
        M_regfile_write_data = M_alu_alu;
      end
      2'h1: begin
        M_regfile_write_data = 1'h0;
      end
      2'h2: begin
        M_regfile_write_data = 6'h3c;
      end
      2'h3: begin
        M_regfile_write_data = M_int_gen_int_input;
      end
      default: begin
        M_regfile_write_data = M_alu_alu;
      end
    endcase
    M_regfile_write_enable = M_sm_we;
    M_regfile_read_address_1 = M_sm_ra;
    M_regfile_read_address_2 = M_sm_rb;
    M_regfile_write_address = M_sm_rc;
    M_sm_rbdata = M_regfile_read_data_2;
    M_sm_confirm_button = confirm_button;
    M_sm_reset_button = reset_button;
    M_sm_button1 = button1;
    M_sm_button2 = button2;
    M_sm_button3 = button3;
    M_sm_button4 = button4;
    M_sm_plus_button = plus_button;
    M_sm_sub_button = sub_button;
    M_sm_mul_button = mul_button;
    integers = M_regfile_integers;
    results = M_regfile_results;
    score = M_regfile_score;
    intinp = M_regfile_intinp;
    opinp = M_regfile_opinp;
    timer_decrease = M_sm_timer_decrease;
    timer_set_sixty = M_sm_timer_set_sixty;
    M_int_gen_randsel = M_sm_randsel;
    M_int_gen_numsel = M_sm_numsel;
  end
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_one_second_q <= 1'h0;
    end else begin
      M_one_second_q <= M_one_second_d;
    end
  end
  
endmodule
