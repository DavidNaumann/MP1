# Mini Project 1 (MP1) for CPE 5220

First project for CPE 5220 in the Spring 2019 semester!

## General Information

This project includes implementations of AND, OR, XOR and NAND gates for inputs of 2, 3 and 5 bits of information. Also include is a NOT gate that takes one input and negates it.

### Table of Contents
1. [References](#references)
	1. [Gate Instances](#gate-instances)
	2. [Component, Entities and Architectures](#components-entities-and-architectures)
		1. [Gates of Different Types for Components](#gates-of-different-types-for-components)
		2. [Testbench Cases](#testbench-cases)
	3. [Variables](#variables)
2. [Verifications](#verifications)
	1. [AND Gates](#and_gates)

## References

### Gate Instances

Name of all of the gate instances

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

NOTE: *Only gates without appended types are NOT1, AND2 and OR2 since they are considered base gates*

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
* tempo(_#) = temporary output of calculations for final computation (when more than 1 is present, _# will be added to the end to enumerate them.
* o = output, always

## Verifications

### AND Gates

#### AND2 (AND with 2 inputs)

* AND2 (AND2 made up of equations) Verification:

![AND2 Verification](https://github.com/DavidTheNewKid/MP1/blob/master/img/and2.bmp "AND2 Verification image")

#### AND3 (AND with 3 inputs)

* AND3_E (AND3 made up of equations) Verification:

![AND3_E Verification](https://github.com/DavidTheNewKid/MP1/blob/master/img/and3_e.bmp "AND3_E Verification image")

* AND3_C (AND3 made up of compents) Verification:

![AND3_C Verification](https://github.com/DavidTheNewKid/MP1/blob/master/img/and3_c.bmp "AND2_3 Verification image")

* AND3_SC (AND3 made up of self components) Verification:

![AND3_SC Verification](https://github.com/DavidTheNewKid/MP1/blob/master/img/and3_sc.bmp "AND3_SC Verification image")

#### AND5 (AND with 5 inputs)

* AND5_E (AND5 made up of equations) Verification:

![AND5_E Verification](https://github.com/DavidTheNewKid/MP1/blob/master/img/and5_e.bmp "AND5_E Verification image")

* AND5_C (AND5 made up of compents) Verification:

![AND5_C Verification](https://github.com/DavidTheNewKid/MP1/blob/master/img/and5_c.bmp "AND5_C Verification image")

* AND5_SC (AND5 made up of self components) Verification:

![AND5_SC Verification](https://github.com/DavidTheNewKid/MP1/blob/master/img/and5_sc.bmp "AND5_SC Verification image")

### OR Gates

#### OR2 (OR with 2 inputs)

* OR2 (OR2 made up of equations) Verification:

![OR2 Verification](https://github.com/DavidTheNewKid/MP1/blob/master/img/or2.bmp "OR2 Verification image")

#### OR3 (OR with 3 inputs)

* OR3_E (OR3 made up of equations) Verification:

![OR3_E Verification](https://github.com/DavidTheNewKid/MP1/blob/master/img/or3_e.bmp "OR3_E Verification image")

* OR3_C (OR3 made up of compents) Verification:

![OR3_C Verification](https://github.com/DavidTheNewKid/MP1/blob/master/img/or3_c.bmp "OR3_3 Verification image")

* OR3_SC (OR3 made up of self components) Verification:

![OR3_SC Verification](https://github.com/DavidTheNewKid/MP1/blob/master/img/or3_sc.bmp "OR3_SC Verification image")

#### OR5 (OR with 5 inputs)

* OR5_E (OR5 made up of equations) Verification:

![OR5_E Verification](https://github.com/DavidTheNewKid/MP1/blob/master/img/or5_e.bmp "OR5_E Verification image")

* OR5_C (OR5 made up of compents) Verification:

![OR5_C Verification](https://github.com/DavidTheNewKid/MP1/blob/master/img/or5_c.bmp "OR5_C Verification image")

* OR5_SC (OR5 made up of self components) Verification:

![OR5_SC Verification](https://github.com/DavidTheNewKid/MP1/blob/master/img/or5_sc.bmp "OR5_SC Verification image")

### NAND Gates

#### NAND2 (NAND with 2 inputs)

* NAND2_E (NAND2_E made up of equations) Verification:

![NAND2_E Verification](https://github.com/DavidTheNewKid/MP1/blob/master/img/nand2_e.bmp "NAND2_E Verification image")

* NAND2_C (NAND2_C made up of equations) Verification:

![NAND2_C Verification](https://github.com/DavidTheNewKid/MP1/blob/master/img/nand2_c.bmp "NAND2_C Verification image")

#### NAND3 (NAND with 3 inputs)

* NAND3_E (NAND3 made up of equations) Verification:

![NAND3_E Verification](https://github.com/DavidTheNewKid/MP1/blob/master/img/nand3_e.bmp "NAND3_E Verification image")

* NAND3_C (NAND3 made up of compents) Verification:

![NAND3_C Verification](https://github.com/DavidTheNewKid/MP1/blob/master/img/nand3_c.bmp "NAND3_3 Verification image")

* NAND3_SC (NAND3 made up of self components) Verification:

![NAND3_SC Verification](https://github.com/DavidTheNewKid/MP1/blob/master/img/nand3_sc.bmp "NAND3_SC Verification image")

#### NAND5 (NAND with 5 inputs)

* NAND5_E (NAND5 made up of equations) Verification:

![NAND5_E Verification](https://github.com/DavidTheNewKid/MP1/blob/master/img/nand5_e.bmp "NAND5_E Verification image")

* NAND5_C (NAND5 made up of compents) Verification:

![NAND5_C Verification](https://github.com/DavidTheNewKid/MP1/blob/master/img/nand5_c.bmp "NAND5_C Verification image")

* NAND5_SC (NAND5 made up of self components) Verification:

![NAND5_SC Verification](https://github.com/DavidTheNewKid/MP1/blob/master/img/nand5_sc.bmp "NAND5_SC Verification image")

### XOR Gates

#### XOR2 (XOR with 2 inputs)

* XOR2_E (XOR2_E made up of equations) Verification:

![XOR2_E Verification](https://github.com/DavidTheNewKid/MP1/blob/master/img/xor2_e.bmp "XOR2_E Verification image")

* XOR2_C (XOR2_C made up of equations) Verification:

![XOR2_C Verification](https://github.com/DavidTheNewKid/MP1/blob/master/img/xor2_c.bmp "XOR2_C Verification image")

#### XOR3 (XOR with 3 inputs)

* XOR3_E (XOR3 made up of equations) Verification:

![XOR3_E Verification](https://github.com/DavidTheNewKid/MP1/blob/master/img/xor3_e.bmp "XOR3_E Verification image")

* XOR3_C (XOR3 made up of compents) Verification:

![XOR3_C Verification](https://github.com/DavidTheNewKid/MP1/blob/master/img/xor3_c.bmp "XOR3_3 Verification image")

* XOR3_SC (XOR3 made up of self components) Verification:

![XOR3_SC Verification](https://github.com/DavidTheNewKid/MP1/blob/master/img/xor3_sc.bmp "XOR3_SC Verification image")

#### XOR5 (XOR with 5 inputs)

* XOR5_E (XOR5 made up of equations) Verification:

![XOR5_E Verification](https://github.com/DavidTheNewKid/MP1/blob/master/img/xor5_e.bmp "XOR5_E Verification image")

* XOR5_C (XOR5 made up of compents) Verification:

![XOR5_C Verification](https://github.com/DavidTheNewKid/MP1/blob/master/img/xor5_c.bmp "XOR5_C Verification image")

* XOR5_SC (XOR5 made up of self components) Verification:

![XOR5_SC Verification](https://github.com/DavidTheNewKid/MP1/blob/master/img/xor5_sc.bmp "XOR5_SC Verification image")