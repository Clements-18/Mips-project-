.globl main  


.data
array: .space 11



newline: .asciiz "\n"
.text 


main: 
	li $a1, 11 # one null character + 10 characters  
	li $v0, 8 # the opocode 
	la $a0, array # takes in as an array from the user
	syscall #Ends 

	li $v0, 4
	syscall 
