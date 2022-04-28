// Tiongquico, Erik Lance L. (S11)
module tioe1_tb();
    reg [3:0] t_input;
    wire t_F;

    tioe1 dut(t_F, t_input[3], t_input[2], t_input[1], t_input[0]);

    initial begin
        t_input = 4'b0000;
        repeat(15)
            #10 t_input = t_input + 4'b0001;
        #10 t_input = 4'b0000;
    end

    initial begin
        $display("Written by Erik Lance Tiongquico - S11");
        $display("(AB' + A'B) (C+D')");
        $display("Verilog Dataflow Model");
        $monitor("time = %0d ", $time, "A = %b B = %b C = %b D = %b output_F = %b", t_input[3], t_input[2], t_input[1], t_input[0], t_F);
        $dumpfile("tioe1.vcd");
        $dumpvars();
    end

endmodule