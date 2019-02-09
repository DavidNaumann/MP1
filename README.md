# Mini Project for CPE 5220

First project for CPE 5220 in the Spring 2019 semester!

## General Information

This project includes implementations of AND, OR, XOR and NAND gates for inputs of 2, 3 and 5 bits of information. Also include is a NOT gate that takes one input and negates it.


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
or OR53 would be the third instance of a 5 input OR gate
```

### Components, Entities and Architectures

* AND#  =  AND gate of # inputs
* XOR#  =  XOR gate of # inputs
* OR#   =  OR gate of # inputs
* NAND# =  NAND gate of # inputs
* NOT1  =  NOT gate of 1 input

For normal architecture definitions just append _EQ on the end of the component/entity name

#### Gates of Different Types for Components
_E appended at the end is a gate that is made using its equation
_C appended at the end is a gate of components
_SC appended at the end is a gate of itself with smaller inputs (self components (i.e NAND5 would be made of NAND2))

```
i.e.  NAND3_C would be NAND3 with AND3, OR3, NOT1 components
      NAND3_E would be NAND3 with AND, OR, NOT built in functions
      NAND3_SC would be NAND3 with NAND2 components (self-component)
```

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