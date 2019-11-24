
# Table of Contents

1.  [Abstract](#orgbc7a613)
2.  [Working](#orge134f82)



<a id="orgbc7a613"></a>

# Abstract

An up-down counter is a sequential logic circuit which has the ability to count up and down in steps of set increment. It remembers the previous state and the next state is decided by a 1 bit input. The up-down counter is used in timing circuits, state counters and a variety of other applications. Here, we have implemented a 16-bit synchronous up-down counter in verilog using structural modelling. It has the ability to count up and down in steps of one, up to a value of 65535.


<a id="orge134f82"></a>

# Working

The up-down counter uses positive edge-triggered t-flipflops as the memory element. The first t-flipflop, representing the LSB, has a constant toggle state of 1 i.e, it toggles on every clock cycle. The subsequent flipflops' toggle state depends on the output of the previous one. This is done by passing the output (q) and the opcode (up) through an AND gate, negation of output (q') and the negation of opcode (up') through another AND gate, and the output of the two through an OR gate. This results in each subsequent flipflop being toggled every n cycles, where n is the number of flipflops. By taking each bit of the number as the output of each flipflop, with the first flipflop as LSB and last one as MSB, the output of that cycle is obtained. The direction of count can be altered by changing the opcode (opcode 1 counts up, opcode 0 counts down).  

