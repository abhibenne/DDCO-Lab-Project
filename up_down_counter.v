module up_down_counter    (
out      ,  // Output of the counter
up_down  ,  // up_down control for counter
clk      ,  // clock input
reset       // reset input
);
//----------Output Ports--------------
output [15:0] out;
//------------Input Ports-------------- 
input up_down, clk, reset;
//------------Internal Variables--------
reg [15:0] out;
//-------------Code Starts Here-------
always @(posedge clk)
if (reset) begin // active high reset
  out <= 16'b0 ;
end else if (up_down) begin
  out <= out + 1;
end else begin
  out <= out - 1;
end

endmodule 

