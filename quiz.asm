section .data
    q1 db "1) What is the biggest ocean in the world?",10  ;43
    s1a1 db "  a) Indian Ocean",10                           ;18
    s1a2 db "  b) Atlantic Ocean",10                         ;20
    s1a3 db "  c) Pacific Ocean",10                          ;19
    s1a4 db "  d) Arctic Ocean",10,10                           ;19
    q2 db "2) Who invented the World Wide Web?",10         ;36
    s2a1 db "  a) John Von Neumann",10                       ;22
    s2a2 db "  b) John Babbage",10                           ;18
    s2a3 db "  c) Tim Berners Lee",10                        ;21
    s2a4 db "  d) George Baily",10 ,10                           ;19
    q3 db "3) Which is a drawing of Leonardo Da Vinci?",10  ;44
    s3a1 db "  a) Girl with a Pearl Earring",10               ;31
    s3a2 db "  b) The Starry Night",10                        ;22
    s3a3 db "  c) Mona Lisa",10                               ;15
    s3a4 db "  d) Sistine Chapel ceiling",10,10                  ;29
    q4 db "4) Who found America?",10                        ;22
    s4a1 db "  a) Vasco da Gama",10                           ;19
    s4a2 db "  b) Bartolomeu Dias",10                         ;21
    s4a3 db "  c) Christopher Columbus",10                    ;26
    s4a4 db "  d) Ferdinand Magellan",10,10                      ;25
    q5 db "5) What is the coldest planet in Solar System?",10 ;47
    s5a1 db "  a) Neptune",10                                 ;13
    s5a2 db "  b) Pluto",10                                   ;11
    s5a3 db "  c) Uranus",10                                  ;12
    s5a4 db "  d) Saturn",10,10                                  ;13
    q6 db "6) Where is the headquaters of Google situated?",10  ;48
    s6a1 db "  a) Cupertino, California, United States",10        ;42
    s6a2 db "  b) Mountain View, California, United States",10    ;46
    s6a3 db "  c) Paris, France",10                               ;19
    s6a4 db "  d) Washington, D.C., United States",10,10             ;38
    q7 db "7) What is the capital of Canada?",10                ;34
    s7a1 db "  a) Toronto",10                                     ;13
    s7a2 db "  b) Montreal",10                                    ;14
    s7a3 db "  c) Calgary",10                                     ;13
    s7a4 db "  d) Ottawa",10,10                                      ;13
    q8 db "8) Where will the next FIFA World Cup be held?",10   ;47
    s8a1 db "  a) Brasil",10                                      ;12
    s8a2 db "  b) Qatar",10                                       ;11
    s8a3 db "  c) Japan",10                                       ;11
    s8a4 db "  d) French",10,10                                      ;13
    q9 db "9) Is this the 9th Question?",10                     ;29
    s9a1 db "  a) True",10                                        ;10
    s9a2 db "  b) False",10,10                                       ;12
    q10 db "10) Which is not a company of Elon Musk?",10        ;41
    s10a1 db "  a) SpaceX",10                                     ;12
    s10a2 db "  b) Boring Company",10                             ;21
    s10a3 db "  c) Tesla",10                                      ;11
    s10a4 db "  d) Amazon",10,10                                     ;13
    Ans db "Answer : "                                          ;9
    Error db "Oh. You are Wrong!!! Now Try Again:)",10           ;37
    Vic db "Congratulations!!! You are Awesome!!!",10           ;38

section .bss
    ans1 resq 1
    ans2 resq 1
    ans3 resq 1
    ans4 resq 1
    ans5 resq 1
    ans6 resq 1
    ans7 resq 1
    ans8 resq 1
    ans9 resq 1
    ans10 resq 1

section .text 
    global _start

_start:
    call _question01
    call _answer0101
    call _answer0102
    call _answer0103
    call _answer0104
    call _myAns
    call _enterAns1

    mov r9, qword[ans1]
    cmp r9, "c"
    jne _error

    call _enterAns2
    call _question02
    call _answer0201
    call _answer0202
    call _answer0203
    call _answer0204
    call _myAns
    call _enterAns2

    mov r9, qword[ans2]
    cmp r9, "c"
    jne _error

    call _enterAns3
    call _question03
    call _answer0301
    call _answer0302
    call _answer0303
    call _answer0304
    call _myAns
    call _enterAns3

    mov r9, qword[ans3]
    cmp r9, "c"
    jne _error

    call _enterAns4
    call _question04
    call _answer0401
    call _answer0402
    call _answer0403
    call _answer0404
    call _myAns
    call _enterAns4

    mov r9, qword[ans4]
    cmp r9, "c"
    jne _error

    call _enterAns5
    call _question05
    call _answer0501
    call _answer0502
    call _answer0503
    call _answer0504
    call _myAns
    call _enterAns5

    mov r9, qword[ans5]
    cmp r9, "a"
    jne _error

    call _enterAns6
    call _question06
    call _answer0601
    call _answer0602
    call _answer0603
    call _answer0604
    call _myAns
    call _enterAns6

    mov r9, qword[ans6]
    cmp r9, "b"
    jne _error

    call _enterAns7
    call _question07
    call _answer0701
    call _answer0702
    call _answer0703
    call _answer0704
    call _myAns
    call _enterAns7

    mov r9, qword[ans7]
    cmp r9, "d"
    jne _error

    call _enterAns8
    call _question08
    call _answer0801
    call _answer0802
    call _answer0803
    call _answer0804
    call _myAns
    call _enterAns8

    mov r9, qword[ans8]
    cmp r9, "b"
    jne _error

    call _enterAns9
    call _question09
    call _answer0901
    call _answer0902
    call _myAns
    call _enterAns9

    mov r9, qword[ans9]
    cmp r9, "a"
    jne _error

    call _enterAns10
    call _question10
    call _answer1001
    call _answer1002
    call _answer1003
    call _answer1004
    call _myAns
    call _enterAns10

    mov r9, qword[ans10]
    cmp r9, "d"
    jne _error

    call _victory
    mov rax, 60
    mov rdi, 0
    syscall

_question01:
    mov rax, 1
    mov rdi, 1
    mov rsi, q1
    mov rdx, 43
    syscall
    ret

_answer0101:
    mov rax, 1
    mov rdi, 1
    mov rsi, s1a1
    mov rdx, 18
    syscall
    ret

_answer0102:
    mov rax, 1
    mov rdi, 1
    mov rsi, s1a2
    mov rdx, 20
    syscall
    ret

_answer0103:
    mov rax, 1
    mov rdi, 1
    mov rsi, s1a3
    mov rdx, 19
    syscall
    ret

_answer0104:
    mov rax, 1
    mov rdi, 1
    mov rsi, s1a4
    mov rdx, 19
    syscall
    ret

_enterAns1:
    mov rax, 0
    mov rdi, 0
    mov rsi, ans1
    mov rdx, 1
    syscall
    ret

_question02:
    mov rax, 1
    mov rdi, 1
    mov rsi, q2
    mov rdx, 36
    syscall
    ret

_answer0201:
    mov rax, 1
    mov rdi, 1
    mov rsi, s2a1
    mov rdx, 22
    syscall
    ret

_answer0202:
    mov rax, 1
    mov rdi, 1
    mov rsi, s2a2
    mov rdx, 18
    syscall
    ret

_answer0203:
    mov rax, 1
    mov rdi, 1
    mov rsi, s2a3
    mov rdx, 21
    syscall
    ret

_answer0204:
    mov rax, 1
    mov rdi, 1
    mov rsi, s2a4
    mov rdx, 19
    syscall
    ret

_enterAns2:
    mov rax, 0
    mov rdi, 0
    mov rsi, ans2
    mov rdx, 1
    syscall
    ret

_question03:
    mov rax, 1
    mov rdi, 1
    mov rsi, q3
    mov rdx, 44
    syscall
    ret

_answer0301:
    mov rax, 1
    mov rdi, 1
    mov rsi, s3a1
    mov rdx, 31
    syscall
    ret

_answer0302:
    mov rax, 1
    mov rdi, 1
    mov rsi, s3a2
    mov rdx, 22
    syscall
    ret

_answer0303:
    mov rax, 1
    mov rdi, 1
    mov rsi, s3a3
    mov rdx, 15
    syscall
    ret

_answer0304:
    mov rax, 1
    mov rdi, 1
    mov rsi, s3a4
    mov rdx, 29
    syscall
    ret

_enterAns3:
    mov rax, 0
    mov rdi, 0
    mov rsi, ans3
    mov rdx, 1
    syscall
    ret

_question04:
    mov rax, 1
    mov rdi, 1
    mov rsi, q4
    mov rdx, 22
    syscall
    ret

_answer0401:
    mov rax, 1
    mov rdi, 1
    mov rsi, s4a1
    mov rdx, 19
    syscall
    ret

_answer0402:
    mov rax, 1
    mov rdi, 1
    mov rsi, s4a2
    mov rdx, 21
    syscall
    ret

_answer0403:
    mov rax, 1
    mov rdi, 1
    mov rsi, s4a3
    mov rdx, 26
    syscall
    ret

_answer0404:
    mov rax, 1
    mov rdi, 1
    mov rsi, s4a4
    mov rdx, 25
    syscall
    ret

_enterAns4:
    mov rax, 0
    mov rdi, 0
    mov rsi, ans4
    mov rdx, 1
    syscall
    ret

_question05:
    mov rax, 1
    mov rdi, 1
    mov rsi, q5
    mov rdx, 47
    syscall
    ret

_answer0501:
    mov rax, 1
    mov rdi, 1
    mov rsi, s5a1
    mov rdx, 13
    syscall
    ret

_answer0502:
    mov rax, 1
    mov rdi, 1
    mov rsi, s5a2
    mov rdx, 11
    syscall
    ret

_answer0503:
    mov rax, 1
    mov rdi, 1
    mov rsi, s5a3
    mov rdx, 12
    syscall
    ret

_answer0504:
    mov rax, 1
    mov rdi, 1
    mov rsi, s5a4
    mov rdx, 13
    syscall
    ret

_enterAns5:
    mov rax, 0
    mov rdi, 0
    mov rsi, ans5
    mov rdx, 1
    syscall
    ret

_question06:
    mov rax, 1
    mov rdi, 1
    mov rsi, q6
    mov rdx, 48
    syscall
    ret

_answer0601:
    mov rax, 1
    mov rdi, 1
    mov rsi, s6a1
    mov rdx, 42
    syscall
    ret

_answer0602:
    mov rax, 1
    mov rdi, 1
    mov rsi, s6a2
    mov rdx, 46
    syscall
    ret

_answer0603:
    mov rax, 1
    mov rdi, 1
    mov rsi, s6a3
    mov rdx, 19
    syscall
    ret

_answer0604:
    mov rax, 1
    mov rdi, 1
    mov rsi, s6a4
    mov rdx, 38
    syscall
    ret

_enterAns6:
    mov rax, 0
    mov rdi, 0
    mov rsi, ans6
    mov rdx, 1
    syscall
    ret

_question07:
    mov rax, 1
    mov rdi, 1
    mov rsi, q7
    mov rdx, 34
    syscall
    ret

_answer0701:
    mov rax, 1
    mov rdi, 1
    mov rsi, s7a1
    mov rdx, 13
    syscall
    ret

_answer0702:
    mov rax, 1
    mov rdi, 1
    mov rsi, s7a2
    mov rdx, 14
    syscall
    ret

_answer0703:
    mov rax, 1
    mov rdi, 1
    mov rsi, s7a3
    mov rdx, 13
    syscall
    ret

_answer0704:
    mov rax, 1
    mov rdi, 1
    mov rsi, s7a4
    mov rdx, 13
    syscall
    ret

_enterAns7:
    mov rax, 0
    mov rdi, 0
    mov rsi, ans7
    mov rdx, 1
    syscall
    ret

_question08:
    mov rax, 1
    mov rdi, 1
    mov rsi, q8
    mov rdx, 47
    syscall
    ret

_answer0801:
    mov rax, 1
    mov rdi, 1
    mov rsi, s8a1
    mov rdx, 12
    syscall
    ret

_answer0802:
    mov rax, 1
    mov rdi, 1
    mov rsi, s8a2
    mov rdx, 11
    syscall
    ret

_answer0803:
    mov rax, 1
    mov rdi, 1
    mov rsi, s8a3
    mov rdx, 11
    syscall
    ret

_answer0804:
    mov rax, 1
    mov rdi, 1
    mov rsi, s8a4
    mov rdx, 13
    syscall
    ret

_enterAns8:
    mov rax, 0
    mov rdi, 0
    mov rsi, ans8
    mov rdx, 1
    syscall
    ret

_question09:
    mov rax, 1
    mov rdi, 1
    mov rsi, q9
    mov rdx, 29
    syscall
    ret

_answer0901:
    mov rax, 1
    mov rdi, 1
    mov rsi, s9a1
    mov rdx, 10
    syscall
    ret

_answer0902:
    mov rax, 1
    mov rdi, 1
    mov rsi, s9a2
    mov rdx, 12
    syscall
    ret

_enterAns9:
    mov rax, 0
    mov rdi, 0
    mov rsi, ans9
    mov rdx, 1
    syscall
    ret

_question10:
    mov rax, 1
    mov rdi, 1
    mov rsi, q10
    mov rdx, 41
    syscall
    ret

_answer1001:
    mov rax, 1
    mov rdi, 1
    mov rsi, s10a1
    mov rdx, 12
    syscall
    ret

_answer1002:
    mov rax, 1
    mov rdi, 1
    mov rsi, s10a2
    mov rdx, 20
    syscall
    ret

_answer1003:
    mov rax, 1
    mov rdi, 1
    mov rsi, s10a3
    mov rdx, 11
    syscall
    ret

_answer1004:
    mov rax, 1
    mov rdi, 1
    mov rsi, s10a4
    mov rdx, 13
    syscall
    ret

_enterAns10:
    mov rax, 0
    mov rdi, 0
    mov rsi, ans10
    mov rdx, 1
    syscall
    ret

_myAns:
    mov rax, 1
    mov rdi, 1
    mov rsi, Ans
    mov rdx, 9
    syscall
    ret

_error:
    mov rax, 1
    mov rdi, 1
    mov rsi, Error
    mov rdx, 37
    syscall

    mov rax, 60
    mov rdi, 0
    syscall

_victory:
    mov rax, 1
    mov rdi, 1
    mov rsi, Vic
    mov rdx, 38
    syscall
    ret
