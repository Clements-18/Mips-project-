.globl main  


.data
array: .space 11



newline: .asciiz "\n"
.text 


main: 
	li $a1, 11
	li $v0, 8
	la $a0, array 
	syscall

	li $v0, 4
	syscall 
