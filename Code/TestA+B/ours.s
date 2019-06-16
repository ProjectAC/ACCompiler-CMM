    .globl plus
plus:
    pushq %rbp
    movq %rsp, %rbp
    movl %edi, -4(%rbp)
    movl %esi, -8(%rbp)
    subq $28, %rsp
    mov -8(%rbp), %eax
    movl %eax, %edx
    mov -4(%rbp), %eax
    addl %edx, %eax
    jmp plus_function_ending
plus_function_ending:
    leave
    ret
    .globl mul
mul:
    pushq %rbp
    movq %rsp, %rbp
    movl %edi, -4(%rbp)
    movl %esi, -8(%rbp)
    subq $28, %rsp
    mov -8(%rbp), %eax
    movl %eax, %edx
    mov -4(%rbp), %eax
    imull %edx, %eax
    jmp mul_function_ending
mul_function_ending:
    leave
    ret
    .globl tmp
tmp:
    pushq %rbp
    movq %rsp, %rbp
    movl %edi, -4(%rbp)
    movl %esi, -8(%rbp)
    subq $28, %rsp
    mov -8(%rbp), %eax
    movl %eax, %edx
    mov -4(%rbp), %eax
    cmpl %edx, %eax
    setl %al
    movzbl %al, %eax
    jmp tmp_function_ending
tmp_function_ending:
    leave
    ret
    .globl test
test:
    pushq %rbp
    movq %rsp, %rbp
    movl %edi, -4(%rbp)
    movl %esi, -8(%rbp)
    movl %edx, -12(%rbp)
    movl %ecx, -16(%rbp)
    movl %r8d, -20(%rbp)
    movl %r9d, -24(%rbp)
    subq $44, %rsp
    mov -4(%rbp), %eax
    movl %eax, %edx
    mov -8(%rbp), %eax
    cmpl %edx, %eax
    setl %al
    movzbl %al, %eax
    cmpl $0, %eax
    jz if_355_false
    mov -16(%rbp), %eax
    movl %eax, %edx
    mov -12(%rbp), %eax
    subl %edx, %eax
    jmp if_355_end
if_355_false:
    mov -24(%rbp), %eax
    movl %eax, %edx
    mov -20(%rbp), %eax
    imull %edx, %eax
if_355_end:
    jmp test_function_ending
test_function_ending:
    leave
    ret
    .globl fact
fact:
    pushq %rbp
    movq %rsp, %rbp
    movl %edi, -4(%rbp)
    subq $24, %rsp
    mov -4(%rbp), %eax
    cmpl $0, %eax
    jz if_474_false
    movl %edx, -8(%rbp)
    movl $1, %eax
    movl %eax, %edx
    mov -4(%rbp), %eax
    subl %edx, %eax
    mov %eax, %edi
    call fact@PLT
    movl -8(%rbp), %edx
    movl %eax, %edx
    mov -4(%rbp), %eax
    imull %edx, %eax
    jmp if_474_end
if_474_false:
    movl $1, %eax
if_474_end:
    jmp fact_function_ending
fact_function_ending:
    leave
    ret
    .globl fib
fib:
    pushq %rbp
    movq %rsp, %rbp
    movl %edi, -4(%rbp)
    subq $24, %rsp
    movl $2, %eax
    movl %eax, %edx
    mov -4(%rbp), %eax
    cmpl %edx, %eax
    setl %al
    movzbl %al, %eax
    cmpl $0, %eax
    jz if_633_false
    mov -4(%rbp), %eax
    jmp if_633_end
if_633_false:
    movl %edx, -8(%rbp)
    movl $2, %eax
    movl %eax, %edx
    mov -4(%rbp), %eax
    subl %edx, %eax
    mov %eax, %edi
    call fib@PLT
    movl -8(%rbp), %edx
    movl %eax, %edx
    movl %edx, -8(%rbp)
    movl $1, %eax
    movl %eax, %edx
    mov -4(%rbp), %eax
    subl %edx, %eax
    mov %eax, %edi
    call fib@PLT
    movl -8(%rbp), %edx
    addl %edx, %eax
if_633_end:
    jmp fib_function_ending
fib_function_ending:
    leave
    ret
