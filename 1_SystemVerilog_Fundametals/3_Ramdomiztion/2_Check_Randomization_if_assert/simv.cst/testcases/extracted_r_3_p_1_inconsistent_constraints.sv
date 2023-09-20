class c_3_1;
    randc bit[3:0] a; // rand_mode = ON 

    constraint data_this    // (constraint_mode = ON) (check_random.sv:5)
    {
       (a > 4'hf);
    }
endclass

program p_3_1;
    c_3_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z11xzxx10xz01z1z100z10x01xx01z1zxxxxxxzxzzzzzxzxzxxxxzxzzzzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
