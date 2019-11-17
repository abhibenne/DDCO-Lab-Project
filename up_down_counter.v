module and2(
  input wire i1,
  i2,
  output wire o
);
assign o = i1&i2;
endmodule

module or2(
  input wire i1,
  i2,
  output wire o
);
assign o = i1|i2;
endmodule

module tfr(reset,clock,t,q);
input t,clock,reset;
output reg q;
always@(posedge clock)
begin
  case({reset,t})
    2'b00 :q=q;
    2'b01 :q=~q;
    default: q=0;
  endcase
end
endmodule

module up_down_counter(
  input wire clk,
  up,
  reset,
  output wire [15:0]out
);

wire[15:0] temp;
wire[14:0] and1_out, and2_out, or_out;

tfr t1(reset, clk, 1'b1, temp[0]);

and2 a1_1(temp[0], up, and1_out[0]);
and2 a1_2(!temp[0], !up, and2_out[0]);
or2 o1(and1_out[0], and2_out[0], or_out[0]);
tfr t2(reset, clk, or_out[0], temp[1]);

and2 a2_1(temp[1], and1_out[0], and1_out[1]);
and2 a2_2(!temp[1], and2_out[0], and2_out[1]);
or2 o2(and1_out[1], and2_out[1], or_out[1]);
tfr t3(reset, clk, or_out[1], temp[2]);

and2 a3_1(temp[2], and1_out[1], and1_out[2]);
and2 a3_2(!temp[2], and2_out[1], and2_out[2]);
or2 o3(and1_out[2], and2_out[2], or_out[2]);
tfr t4(reset, clk, or_out[2], temp[3]);

and2 a4_1(temp[3], and1_out[2], and1_out[3]);
and2 a4_2(!temp[3], and2_out[2], and2_out[3]);
or2 o4(and1_out[3], and2_out[3], or_out[3]);
tfr t5(reset, clk, or_out[3], temp[4]);

and2 a5_1(temp[4], and1_out[3], and1_out[4]);
and2 a5_2(!temp[4], and2_out[3], and2_out[4]);
or2 o5(and1_out[4], and2_out[4], or_out[4]);
tfr t6(reset, clk, or_out[4], temp[5]);

and2 a6_1(temp[5], and1_out[4], and1_out[5]);
and2 a6_2(!temp[5], and2_out[4], and2_out[5]);
or2 o6(and1_out[5], and2_out[5], or_out[5]);
tfr t7(reset, clk, or_out[5], temp[6]);

and2 a7_1(temp[6], and1_out[5], and1_out[6]);
and2 a7_2(!temp[6], and2_out[5], and2_out[6]);
or2 o7(and1_out[6], and2_out[6], or_out[6]);
tfr t8(reset, clk, or_out[6], temp[7]);

and2 a8_1(temp[7], and1_out[6], and1_out[7]);
and2 a8_2(!temp[7], and2_out[6], and2_out[7]);
or2 o8(and1_out[7], and2_out[7], or_out[7]);
tfr t9(reset, clk, or_out[7], temp[8]);

and2 a9_1(temp[8], and1_out[7], and1_out[8]);
and2 a9_2(!temp[8], and2_out[7], and2_out[8]);
or2 o9(and1_out[8], and2_out[8], or_out[8]);
tfr t10(reset, clk, or_out[8], temp[9]);

and2 a10_1(temp[9], and1_out[8], and1_out[9]);
and2 a10_2(!temp[9], and2_out[8], and2_out[9]);
or2 o10(and1_out[9], and2_out[9], or_out[9]);
tfr t11(reset, clk, or_out[9], temp[10]);

and2 a11_1(temp[10], and1_out[9], and1_out[10]);
and2 a11_2(!temp[10], and2_out[9], and2_out[10]);
or2 o11(and1_out[10], and2_out[10], or_out[10]);
tfr t12(reset, clk, or_out[10], temp[11]);

and2 a12_1(temp[11], and1_out[10], and1_out[11]);
and2 a12_2(!temp[11], and2_out[10], and2_out[11]);
or2 o12(and1_out[11], and2_out[11], or_out[11]);
tfr t13(reset, clk, or_out[11], temp[12]);

and2 a13_1(temp[12], and1_out[11], and1_out[12]);
and2 a13_2(!temp[12], and2_out[11], and2_out[12]);
or2 o13(and1_out[12], and2_out[12], or_out[12]);
tfr t14(reset, clk, or_out[12], temp[13]);

and2 a14_1(temp[13], and1_out[12], and1_out[13]);
and2 a14_2(!temp[13], and2_out[12], and2_out[13]);
or2 o14(and1_out[13], and2_out[13], or_out[13]);
tfr t15(reset, clk, or_out[13], temp[14]);

and2 a15_1(temp[14], and1_out[13], and1_out[14]);
and2 a15_2(!temp[14], and2_out[13], and2_out[14]);
or2 o15(and1_out[14], and2_out[14], or_out[14]);
tfr t16(reset, clk, or_out[14], temp[15]);

assign out = temp;

endmodule 

