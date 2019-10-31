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

#for loop code 
	
	bge $t6, 10, Fin  
	lb $t7, 0($t5) 


	ble $t7, 48 # if its less than 0 
	ble $t7, 57 # if its more than 9
 
	bge $t7, 65 # Big A 
	ble $t7, 89 # Big Y

	bge $t7, 97 # little a 
	ble $t7, 121 # little y 

Fin:
	
