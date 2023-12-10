.text:

_start:
mov  msg
mov %IR1, %ACC
load [%IR1]
out $0
inc %IR1
mov %ACC, %IR1
cmp $msg_len
jne $3
halt

.data:
msg: "Hello, world!\n"
msg_len = . - msg
