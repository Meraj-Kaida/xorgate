module xorgate(a,b,y);
input a,b;
output y;
assign y=a^b;
endmodule

module xorgate_tb;
reg a,b;
wire y;
xorgate uut(a,b,y);
parameter period =20 ;
initial begin
    $dumpfile("xor_tb.vcd");
    $dumpvars();
    a=0; b=0;
    #period;
    a=0; b=1;
    #period;
    a=1; b=0;
    #period;
    a=1; b=1;
    #period;
    $finish;
end
endmodule