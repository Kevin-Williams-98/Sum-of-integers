###########################################################################################################################################################################
# Program Name : Sum of integers
# Programmer : Kevin Williams
# Date last modified : 9/12/2918
###########################################################################################################################################################################
# Functional Description :
# A program to find the sum of the integers from 1 to N, where N is a value
############################################################################################################################################################################
.data 
Prompt : .asciiz "\n Please Input a value for N =  "
Result: .asciiz   "The sum of the integers from 1 to N is " 
Bye: .asciiz    "\n **** Adios Amigo- Have a good day****"
.globl      main
.text
main :
li  $v0, 4  # system call code for Print String
la  $a0 , Prompt # load address of prompt int $a0
syscall #print the prompt message
li  $v0, 5 # system call code for Read Integer
syscall    # reads the value of N into $v0
blez  $v0, End # branch to end if $v0 <=0
li $t0, 0   # clear register $to to 0

Loop:
add $t0 ,$t0, $v0 # sum of integers in register $t0
addi  $v0,$v0, -1 
bnez $v0,Loop

li $v0,4
la  $a0, Result
syscall

li $v0, 1
move $a0, $t0
syscall
b         main

End : li  $v0, 4 
la          $a0, Bye
syscall
li          $v0,10
syscall


