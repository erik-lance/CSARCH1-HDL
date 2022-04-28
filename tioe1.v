// Tiongquico, Erik Lance L. (S11)
/*
    Boolean Function
    F =(AB' + A'B) (C+D')

*/
module tioe1(F, A, B, C, D);
    output F;
    input A, B, C, D;

    assign F = (A&~B | ~A&B) & (C | ~D);
    //assign F = ( (A && !B) || (!A && B) ) && (C && !D);


endmodule