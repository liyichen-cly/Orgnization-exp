module test_alu();
   reg [2:0] ALUctr;
   reg [31:0] A,B;
   wire [31:0]result;
   wire Zero;
 
   ALU alu(.ALUctr(ALUctr),.A(A),.B(B),.Result(result),.Zero(Zero));
   initial
   begin
     ALUctr = 3'b000;
     A = 32'b1;
     B = 32'b1;
     #10 ALUctr = 3'b001;
     A = 32'b11;
     B = 32'b1;
     #10 ALUctr = 3'b010;
     A = 32'b0;
     B = 32'b0;
     #10 ALUctr = 3'b011;
     B = 32'b1;
     #10 ALUctr = 3'b100;      
   end

endmodule
