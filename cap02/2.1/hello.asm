global _start

section .data
message: db 'hello world!', 10
section .text

_start:
    mov rax, 1 ; o numero de chamadas de sistema deve ser armazenado em rax
    mov rdi, 1 ; argumento #1 em rdi, onde escrever(descritor?)
    mov rsi, message ; argumento #2 em rsi: onde começa a string
    mov rdx, 14 ; argumento #3 em rx, quantos bytes deve ser escrito ?
    syscall ; essa instrução faz uma chamada de sistema