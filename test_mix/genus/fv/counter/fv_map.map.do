
//input ports
add mapped point enable enable -type PI PI
add mapped point clk clk -type PI PI
add mapped point reset reset -type PI PI

//output ports
add mapped point out[7] out[7] -type PO PO
add mapped point out[6] out[6] -type PO PO
add mapped point out[5] out[5] -type PO PO
add mapped point out[4] out[4] -type PO PO
add mapped point out[3] out[3] -type PO PO
add mapped point out[2] out[2] -type PO PO
add mapped point out[1] out[1] -type PO PO
add mapped point out[0] out[0] -type PO PO

//inout ports




//Sequential Pins
add mapped point out[7]/q out_reg[7]/Q -type DFF DFF
add mapped point out[6]/q out_reg[6]/Q -type DFF DFF
add mapped point out[5]/q out_reg[5]/Q -type DFF DFF
add mapped point out[4]/q out_reg[4]/Q -type DFF DFF
add mapped point out[3]/q out_reg[3]/Q -type DFF DFF
add mapped point out[2]/q out_reg[2]/Q -type DFF DFF
add mapped point out[1]/q out_reg[1]/Q -type DFF DFF
add mapped point out[0]/q out_reg[0]/Q -type DFF DFF



//Black Boxes



//Empty Modules as Blackboxes
