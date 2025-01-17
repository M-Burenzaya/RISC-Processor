`timescale 1ns/1ns

module MIPS_SCP_tb;

	//Inputs
	reg clk;
    	reg reset;
    	
	MIPS_SCP uut (
		.clk(clk),
		.reset(reset)
	);

    always #50 clk=!clk;
	initial begin
      
      $dumpfile("dump.vcd"); $dumpvars;
      
	clk=0;
	reset=1;
	#100; //cycle 1
      repeat(10) begin
	reset=0;
	#100;
      end
      //$finish;
  	end
 

endmodule