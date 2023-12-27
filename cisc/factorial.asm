.text

_start:
    mov %R00, $1
    mov %R01, $1

_next_iter:
    jmp _do_fib_step
    
_end:
    halt

_do_fib_step:
    inc %R01
    mul %R00, %R01
    cmp %R00, $99
    jge _end
    call _write_out
    jmp _next_iter

_write_out:
    push %R01

    mov %R02, %R00
    mov %R03, %R00
    mov %R01, $0

_cycle:
    div %R02, $10
    mul %R02, $10
    sub %R03, %R02
    push %R03
    inc %R01
    div %R03, $10
    mov %R02, %R03
    cmp %R02, $0
    je _output
    jmp _cycle

_output:
    cmp %R01, $0
    je _return
    pop %R02
    out $0, %R02
    dec %R01

_return:
    pop %R01
    ret
