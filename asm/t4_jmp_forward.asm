; jmp short 标号
;	 	最多 向前转移 128 个字节

assume cs:code
	code segment
		s:
			mov ax,1234h   		;占 3个 字节 
			db 123 dup (0)		;占 123个 字节  == 80H
		start:	
			jmp short s			;占 2 个字节
		
	code ends	
end start

;		076A:007E	EB80	JMP	   0000



; 标号的地址 = 0000 
; 位移量：80H
; jmp指令后的 第一个字节的地址：007E + jmp指令的长度 =  007E + 2 = 0080
; 标号的地址     减去     jmp指令后的 第一个字节         =		 偏移量 
;  00	           -              80  				     =        80 == -128
