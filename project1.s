.globl main  


.data
array: .space 11



newline: .asciiz "\n"


prompt: .asciiz
prntans: .asciiz 

#base = 35 m=25 
intputStr: .space 11 #user input

.text 


main: 
	
  	
	li $v0,4 #print statement 
	la $a3, prompt 
	syscall
	li $v0, 8 # the opocode 

	la $a3, array # takes in as an array from the user
	li $a2, 11

	syscall    #Ends 
	la $t1, array # take array from input 
        li $t2, 11 #10 1 null + 10 char 
	


	move $t3, $t1
	lb   $t4, 0($t3)


	



loop #for loop code 
	
	bge $t6, 10, Fin  
	lb $t4, 0($t5) 


	ble $t4, 48, Fin # if its less than 0 Finish 
	ble $t4, 57, NumFun # if its more than 9 put in Number Funtion
 
	bge $t4, 65, LetFunU   # Big A put in letter function upper case 
	ble $t4, 89,  LetFunU # Big Y put in number function upper case 

	bge $t4, 97, LetFunL # little a >= put in letter function lower case 
	ble $t4, 121, LetFunL # little y   put in letter function lower case 

Fin:
	
	li $v0, 4
	la $a3, prntans
 	syscall
	
	 move $a3, $s1
	syscall # all ways at end
	li $v0, 10
	syscall





NumFun:     #the number function, checks range 

	addi $a1, $a1, 0 
	li   $v0, 1 #prints interger
	syscall # allways at end
		

		addi $t , $t , 1
		addi $t , $t , 1
		j loop1 
