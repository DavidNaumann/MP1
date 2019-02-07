# Mini Project for CPE 5220

First project for CPE 5220 in the Spring 2019 semester!

## General Information

This project includes implementations of AND, OR, XOR and NAND gates for inputs of 2, 3 and 5 bits of information. Also include is a NOT gate that takes one input and negates it.

### NEED TO ADD

* OR3 equation model
* OR5 equation model
* NAND3 equation model, using NAND2
* NAND5 equation model, using NAND2 component
* XOR3 equation model, XOR3 using basic gate components
* XOR5 equation model, XOR5 using basic gates components


### Gate Instances

What things you need to install the software and how to install them

* A(ab) =  AND with a inputs of instance number b
* O(ab) =  OR with a inputs of instance number b
* N(a) =   NOT gate instance a
* X(ab) =  XOR with a inputs of instance number b
* NA(ab) = NAND with a inputs of instance number b (if it appeared)

duv is the gate instance for every current test bench (Device Under Verification)

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

For normal architecture definitions just append _EQ on the end of the component/entity name

#### Testbench Cases

For testbench architectures:
* just append _VERIFY on the end of the component/entity name
For testbench entities:
* attach TB_ before the component/entity name
For testbench processes/procedures:
* use name apply_test_cases for test bench processes
* use name apply_test for test bench procedures

```
i.e. AND5 would be an AND gate component of 5 inputs, OR3 would be an OR gate component,
AND5_EQ is the architecture of AND5 and TB_AND5 is the testbench entity of AND5
```

### Variables
* i = Input Variable #
* neg_i# = negation of i# (NOT i#)
* tempo = temporary output to calculations with, always
* o = output, always