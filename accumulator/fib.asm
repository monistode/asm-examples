.text

_start:
    mov $0
    mov %IR1, 120
    mov %IR2, 124

    store [%IR2]

    mov $1
    store [%IR1]

cycle:
    cmp $10
    jge end

    out $0
    push
    mov $"\n"

    out $0
    pop

    add [%IR1]

    out $0
    push
    mov $"\n"

    out $0
    pop

    add [%IR1]
    jmp cycle

end:
    halt
