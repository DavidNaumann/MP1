

-- __________________________
-- Variables

-- i# = Input Variable #
-- curr_i = Stores all bits of current input into vector for testbenching
-- neg_i# = negation of i# (NOT i#)
-- tempo = temporary output to calculations with, always
-- o = output, always

# Mini Project for CPE 5220

One Paragraph of project description goes here

## General Information

This project includes implementations of AND, OR, XOR and NAND gates for inputs of 2, 3 and 5 bits of information. Also include is a NOT gate that takes one input and negates it.


### Gate Instances

What things you need to install the software and how to install them

* A(ab) =  AND with a inputs of instance number b
* O(ab) =  OR with a inputs of instance number b
* N(a) =   NOT gate instance a
* X(ab) =  XOR with a inputs of instance number b
* NA(ab) = NAND with a inputs of instance number b (if it appeared)

```
i.e. A21 would be the first instance of a 2 input AND gate 
or OR53 would be the third instnace of a 5 input OR gate
```

### Components, Entities and Architectures

* AND#  =  AND gate of # inputs
* XOR#  =  XOR gate of # inputs
* OR#   =  OR gate of # inputs
* NAND# =  NAND gate of # inputs
* NOT1  =  NOT gate of 1 input

For architectures just append _EQ on the end of the component/entity name

For test bench entities attach TB_ before the component/entity name

```
i.e. AND5 would be an AND gate component of 5 inputs, OR3 would be an OR gate component,
AND5_EQ is the architecture of AND5 and TB_AND5 is the testbench entity of AND5
```

### Variables
* i = Input Variable #
* neg_i# = negation of i# (NOT i#)
* tempo = temporary output to calculations with, always
* o = output, always