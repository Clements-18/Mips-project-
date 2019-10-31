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


	ble $t7, 48, Fin # if its less than 0 Finish 
	ble $t7, 57, NumFun # if its more than 9 put in Number Funtion
 
	bge $t7, 65, LetFunU   # Big A put in letter function upper case 
	ble $t7, 89,  LetFunU # Big Y put in number function upper case 

	bge $t7, 97, LetFunL # little a put in letter function lower case 
	ble $t7, 121, LetFunL # little y  put in letter function lower case 

Fin:
	add $a1, $s7, $zero 
	li $v0, 1 
	
