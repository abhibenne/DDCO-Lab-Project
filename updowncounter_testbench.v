module updowncounter_testbench;
reg clk, reset,up_down;
wire [15:0] counter;

up_down_counter dut(counter,up_down,clk,reset);

initial begin $dumpfile("outt.vcd");
	$dumpvars(0,updowncounter_testbench);
	end

initial begin 
clk=0;
forever #5 clk=~clk;
end
initial begin
reset=1;
up_down=0;
#20;
reset=0;
#200;
up_down=1;
#200;
up_down=0;
end
endmodule 
