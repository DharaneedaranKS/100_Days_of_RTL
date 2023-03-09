# LFSR

Built a 4-bit linear feedback shift register where the bit[0] of the register is driven by the XOR of the LFSR register bit[1] and bit[3]


## Simualtion 
![simulation]{https://github.com/DharaneedaranKS/100_Days_of_RTL/blob/main/Day-7/lfsr_simulation.jpeg}

## Synthesis 
![synthesis]{https://github.com/DharaneedaranKS/100_Days_of_RTL/blob/main/Day-7/lfsr_synth.jpeg}

## Observations and what learnt 
- It synthesis if the if considtions for the reset is written as if(reset==1'b0) 
- We need active low, ie, reset = 1'b0 to synthesise when negedge is the condition
- We need to specify exactly the value that reset needs to be to synthesise, ie, if (reset == 1'b0), if(~reset) won't synthesise 
