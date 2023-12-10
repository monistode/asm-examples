.text:
_start:

mov %R01, $msg
mov %R02, $1
mov %R00, [%R01]
out $0, %R00
add %R01, R02
cmp %R00, $34
jne $8
halt

.data:
msg: "Hello, world!\n"
msg_len = . - msg
