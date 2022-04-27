//Test bench
`include "tioe1.v"

module tioe1_tb();
    reg t_A, t_B, t_C, t_D;
    wire t_F;

    tioe1 dut(t_F, t_A, t_B, t_C, t_D);

    initial begin
        t_A = 0;
        t_B = 0;
        t_C = 0;
        t_D = 0;

        #10 //after 10 ns
        t_A = 0;
        t_B = 0;
        t_C = 0;
        t_D = 1;

        #10
        t_A = 0;
        t_B = 0;
        t_C = 1;
        t_D = 0;
    end

    initial begin
        $monitor("time = %0d ", $time, "A = %b B = %b C = %b D = %b output_F = %b", t_A, t_B, t_C, t_D, t_F);
        $dumpfile("tioe1.vcd");
        $dumpvars();
    end

endmodule