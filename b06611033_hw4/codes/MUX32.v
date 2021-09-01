module MUX32 
(
   data1_i,
   data2_i,
   select_i,
   data_o    
);

input  [31:0]  data1_i;
input  [31:0]  data2_i;
input  select_i;
output [31:0]  data_o;

/*if (select_i == 0) 
    assign data_o = data1_i;
else if (select_i == 1) 
    assign data_o = data2_i;*/

assign data_o = select_i == 1 ? data2_i: data1_i;

    


    
endmodule