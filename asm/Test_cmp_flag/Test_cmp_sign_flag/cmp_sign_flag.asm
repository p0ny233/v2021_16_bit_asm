; cmp ָ�� �൱�� sub ָ����ǲ�֮ͬ������ ������ ����Ľ�� Ӱ���˱�־λ�Ĵ���
; ����Ľ���ǲ������

; �������㶼���з�������

assume cs:code
	code segment
		start:
			
			; ʵ�ʽ��ֻ�� SF ��ʾ������
			; �߼��ϵĽ����Ҫ SF �� OF λ ͬʱ��ʾ��֪���Ǹ����Ǹ�С



			; �� - �� = �������ǽ���� �����ģ��������
			mov al,7FH
			mov bl,80H
			cmp al,bl
			; ʵ�ʽ���� FF�������SFλ =  1��OF = 1 
			; С - �� �Ľ���� �����ģ�����
			; ����Ϊ����ˣ��߼��ϵĽ���� �� - С��
			; ���� (al) > (bl)


			; �� - �� = �������ǽ���� �����ģ��������
			mov al,80H
			mov bl,1H
			cmp al,bl
			; ʵ�ʽ����  7F �������SFλ =  0��OF = 1 
			; �� - С �Ľ���� �����ģ�����
			; ����Ϊ����ˣ��߼��ϵĽ����  С - ��
			; ���� (al) < (bl)

			

			mov ax,4c00h
			int 21H
			




	code ends

end start