.text
_start:

mov %R01, $0
mov %R00, [%R01 + msg]
out $0, %R00
cmp %R00, $34
inc %R01
jne 4
halt

.data
msg:
ascii "Hello, world!\n"
