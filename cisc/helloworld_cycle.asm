.text:
_start:

mov %R01, $msg
mov %R00, [%R01]
out $0, %R00
inc %R01
cmp %R00, $34
jne $4
halt

.data:
msg: "Hello, world!\n"
msg_len = . - msg
