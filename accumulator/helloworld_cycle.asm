.text

_start:
mov  $18
mov %IR1, %ACC
mov %ACC, %IR1
load %ACC, [%IR1]
out $0
inc %IR1
mov %ACC, %IR1
cmp $33
jne 5
halt

.data
msg: 
ascii "Hello, world!\n"
