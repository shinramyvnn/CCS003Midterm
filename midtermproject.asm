; MIDTERM EXAM PROJECT IN COMPUTER SCIENCE AND ARCHITECTURE
; Assembly
; RICOHERMOSO, RAYMOND JR.

section .data
    CLEAR_SCR   db 27, "[2J", 27, "[1;1H", 0
    NEWLINE     db 10, 0

    ; Interactive Input Prompts
    PROMPT_TITLE db "=== FILL OUT YOUR SLAMBOOK ===", 10, 10, 0
    
    P_NAME      db "1. Name: ", 0
    P_EMAIL     db "2. Email: ", 0
    P_BLOG      db "3. Blog/Website: ", 0
    P_ACHIEV    db "4. First big achievement: ", 0
    P_RISK      db "5. First risk taken: ", 0
    P_HAPPY     db "6. First time happy: ", 0
    P_COLOR     db "7. Favorite Color(s): ", 0
    P_PERF      db "8. Favorite Perfume: ", 0
    P_MUSIC     db "9. Favorite Music genre: ", 0
    P_SING      db "10. Favorite Singer(s): ", 0
    P_SONG      db "11. Favorite Song: ", 0
    P_FOOD      db "12. Favorite Food: ", 0
    P_WEEKEND   db "13. Weekend activity: ", 0
    P_HOBBIES   db "14. Hobbies: ", 0
    P_TV        db "15. Favorite TV Show: ", 0
    P_MOVIE     db "16. Favorite Movie: ", 0
    P_BOOK      db "17. Favorite Book: ", 0
    P_CELEBS    db "18. Favorite Celebs: ", 0
    P_ROLE      db "19. Role Model: ", 0
    P_AMB       db "20. Ambition: ", 0
    P_MOTTO     db "21. Personal Motto: ", 0

    ; Section Labels
    OUT_HEADER  db "MY SLAMBOOK", 0
    HDR_ABOUT   db "[ ABOUT ME ]", 0
    LBL_NAME    db "Name        : ", 0
    LBL_EMAIL   db "Email       : ", 0
    LBL_BLOG    db "Blog/Website: ", 0

    LBL_ACHIEV  db "First big achievement      : ", 0
    LBL_RISK    db "First risk I ever took     : ", 0
    LBL_HAPPY   db "First time completely happy: ", 0

    HDR_FAVES   db "[ MY FAVES ]", 0
    LBL_COLOR   db "Color/s : ", 0
    LBL_PERF    db "Perfume : ", 0
    LBL_MUSIC   db "Music   : ", 0
    LBL_SING    db "Singer/s: ", 0
    LBL_SONG    db "Song    : ", 0
    LBL_FOOD    db "Food    : ", 0

    HDR_HOBBY   db "[ HOBBIES ]", 0
    LBL_WEEKEND db "Weekend activity: ", 0
    LBL_HOBBIES db "Hobbies         : ", 0
    LBL_TV      db "TV Show         : ", 0
    LBL_MOVIE   db "Movie           : ", 0
    LBL_BOOK    db "Book            : ", 0
    LBL_CELEBS  db "Celebs          : ", 0
    LBL_ROLE    db "Role model      : ", 0

    HDR_AMB     db "[ AMBITION ]", 0
    LBL_AMB     db "Ambition   : ", 0

    HDR_MOTTO   db "[ MOTTO ]", 0

    ; --- ASCII ART ELEMENTS ---
    
    ; Outer Frame Border Rows
    BORDER_TOP  db "+-----------------------------------------------------------------------------+", 0
    BORDER_MID  db "|                                                                             |", 0
    BORDER_BOT  db "+-----------------------------------------------------------------------------+", 0

    ; Photo Frame
    ART_PHOTO1  db "+---------+", 0
    ART_PHOTO2  db "|  PHOTO  |", 0
    ART_PHOTO3  db "|  HERE   |", 0
    ART_PHOTO4  db "+---------+", 0

    ; Decorative Art Doodles
    ART_FLOWER  db "@->->--", 0
    ART_HEARTS  db "<3 <3 <3", 0
    ART_STARS   db "* : . * . : *", 0

    ; Spider ASCII Art (11 lines)
    SPIDER_1    db "      />       <\", 0
    SPIDER_2    db "     //         \\", 0
    SPIDER_3    db " </ //   ___   \\ \>", 0
    SPIDER_4    db "  \\ \\  (oo)  // //", 0
    SPIDER_5    db "   '---.X{II}X.---'", 0
    SPIDER_6    db "     //=/\\/\\=\\", 0
    SPIDER_7    db "----/| =  =  |\\----'", 0
    SPIDER_8    db "   // \\ =\\/= / \\\\", 0
    SPIDER_9    db "  ((   `-..-'   ))", 0
    SPIDER_10   db "   \\           /   hjw", 0

section .bss
    ; Input Storage Buffers
    buf_name    resb 64
    buf_email   resb 64
    buf_blog    resb 64
    buf_achiev  resb 64
    buf_risk    resb 64
    buf_happy   resb 64
    buf_color   resb 64
    buf_perf    resb 64
    buf_music   resb 64
    buf_sing    resb 64
    buf_song    resb 64
    buf_food    resb 64
    buf_weekend resb 64
    buf_hobbies resb 64
    buf_tv      resb 64
    buf_movie   resb 64
    buf_book    resb 64
    buf_celebs  resb 64
    buf_role    resb 64
    buf_amb     resb 64
    buf_motto   resb 64

    pos_buf     resb 12

section .text
    global _start

_start:
    ; =========================================================
    ; STEP 1: COLLECT USER INPUTS
    ; =========================================================
    push CLEAR_SCR
    call print_str

    push PROMPT_TITLE
    call print_str

    push P_NAME
    push buf_name
    call get_input

    push P_EMAIL
    push buf_email
    call get_input

    push P_BLOG
    push buf_blog
    call get_input

    push P_ACHIEV
    push buf_achiev
    call get_input

    push P_RISK
    push buf_risk
    call get_input

    push P_HAPPY
    push buf_happy
    call get_input

    push P_COLOR
    push buf_color
    call get_input

    push P_PERF
    push buf_perf
    call get_input

    push P_MUSIC
    push buf_music
    call get_input

    push P_SING
    push buf_sing
    call get_input

    push P_SONG
    push buf_song
    call get_input

    push P_FOOD
    push buf_food
    call get_input

    push P_WEEKEND
    push buf_weekend
    call get_input

    push P_HOBBIES
    push buf_hobbies
    call get_input

    push P_TV
    push buf_tv
    call get_input

    push P_MOVIE
    push buf_movie
    call get_input

    push P_BOOK
    push buf_book
    call get_input

    push P_CELEBS
    push buf_celebs
    call get_input

    push P_ROLE
    push buf_role
    call get_input

    push P_AMB
    push buf_amb
    call get_input

    push P_MOTTO
    push buf_motto
    call get_input

    ; =========================================================
    ; STEP 2: DRAW PAPER FRAME & COMPLETED SLAMBOOK
    ; =========================================================
    push CLEAR_SCR
    call print_str

    ; Draw Top Border
    push 1
    push 1
    call goto_xy
    push BORDER_TOP
    call print_str

    ; Draw Side Borders (Rows 2 to 34)
    mov ecx, 2
.draw_frame_sides:
    push ecx
    push 1
    push ecx
    call goto_xy
    push BORDER_MID
    call print_str
    pop ecx
    inc ecx
    cmp ecx, 35
    jne .draw_frame_sides

    ; Draw Bottom Border
    push 1
    push 35
    call goto_xy
    push BORDER_BOT
    call print_str

    ; --- Title Header & Top Art ---
    push 34
    push 2
    call goto_xy
    push OUT_HEADER
    call print_str

    push 5
    push 2
    call goto_xy
    push ART_FLOWER
    call print_str

    push 65
    push 2
    call goto_xy
    push ART_HEARTS
    call print_str

    ; --- About Me & Photo Box ---
    push 4
    push 4
    call goto_xy
    push HDR_ABOUT
    call print_str

    push 6
    push 5
    call goto_xy
    push LBL_NAME
    call print_str
    push buf_name
    call print_str

    push 6
    push 6
    call goto_xy
    push LBL_EMAIL
    call print_str
    push buf_email
    call print_str

    push 6
    push 7
    call goto_xy
    push LBL_BLOG
    call print_str
    push buf_blog
    call print_str

    ; Photo Frame
    push 62
    push 4
    call goto_xy
    push ART_PHOTO1
    call print_str
    push 62
    push 5
    call goto_xy
    push ART_PHOTO2
    call print_str
    push 62
    push 6
    call goto_xy
    push ART_PHOTO3
    call print_str
    push 62
    push 7
    call goto_xy
    push ART_PHOTO4
    call print_str

    ; --- My Firsts ---
    push 6
    push 9
    call goto_xy
    push LBL_ACHIEV
    call print_str
    push buf_achiev
    call print_str

    push 6
    push 10
    call goto_xy
    push LBL_RISK
    call print_str
    push buf_risk
    call print_str

    push 6
    push 11
    call goto_xy
    push LBL_HAPPY
    call print_str
    push buf_happy
    call print_str

    ; Decorative Stars
    push 62
    push 10
    call goto_xy
    push ART_STARS
    call print_str

    ; --- My Faves ---
    push 4
    push 13
    call goto_xy
    push HDR_FAVES
    call print_str

    push 6
    push 14
    call goto_xy
    push LBL_COLOR
    call print_str
    push buf_color
    call print_str

    push 6
    push 15
    call goto_xy
    push LBL_PERF
    call print_str
    push buf_perf
    call print_str

    push 6
    push 16
    call goto_xy
    push LBL_MUSIC
    call print_str
    push buf_music
    call print_str

    push 40
    push 14
    call goto_xy
    push LBL_SING
    call print_str
    push buf_sing
    call print_str

    push 40
    push 15
    call goto_xy
    push LBL_SONG
    call print_str
    push buf_song
    call print_str

    push 40
    push 17
    call goto_xy
    push LBL_FOOD
    call print_str
    push buf_food
    call print_str

    ; --- Hobbies ---
    push 4
    push 18
    call goto_xy
    push HDR_HOBBY
    call print_str

    push 6
    push 19
    call goto_xy
    push LBL_WEEKEND
    call print_str
    push buf_weekend
    call print_str

    push 6
    push 20
    call goto_xy
    push LBL_HOBBIES
    call print_str
    push buf_hobbies
    call print_str

    push 6
    push 21
    call goto_xy
    push LBL_TV
    call print_str
    push buf_tv
    call print_str

    push 6
    push 22
    call goto_xy
    push LBL_MOVIE
    call print_str
    push buf_movie
    call print_str

    push 6
    push 23
    call goto_xy
    push LBL_BOOK
    call print_str
    push buf_book
    call print_str

    push 6
    push 24
    call goto_xy
    push LBL_CELEBS
    call print_str
    push buf_celebs
    call print_str

    push 6
    push 25
    call goto_xy
    push LBL_ROLE
    call print_str
    push buf_role
    call print_str

    ; --- Ambition ---
    push 4
    push 27
    call goto_xy
    push HDR_AMB
    call print_str

    push 6
    push 28
    call goto_xy
    push LBL_AMB
    call print_str
    push buf_amb
    call print_str

    ; --- Motto ---
    push 4
    push 30
    call goto_xy
    push HDR_MOTTO
    call print_str

    push 6
    push 31
    call goto_xy
    push buf_motto
    call print_str

    ; --- DRAW SPIDER ASCII ART (Bottom Right) ---
    push 53
    push 23
    call goto_xy
    push SPIDER_1
    call print_str

    push 53
    push 24
    call goto_xy
    push SPIDER_2
    call print_str

    push 53
    push 25
    call goto_xy
    push SPIDER_3
    call print_str

    push 53
    push 26
    call goto_xy
    push SPIDER_4
    call print_str

    push 53
    push 27
    call goto_xy
    push SPIDER_5
    call print_str

    push 53
    push 28
    call goto_xy
    push SPIDER_6
    call print_str

    push 53
    push 29
    call goto_xy
    push SPIDER_7
    call print_str

    push 53
    push 30
    call goto_xy
    push SPIDER_8
    call print_str

    push 53
    push 31
    call goto_xy
    push SPIDER_9
    call print_str

    push 53
    push 32
    call goto_xy
    push SPIDER_10
    call print_str

    ; Position Cursor outside the frame before exiting
    push 1
    push 36
    call goto_xy

    ; Exit Program
    mov eax, 1          ; sys_exit
    xor ebx, ebx        ; exit code 0
    int 0x80

; =============================================================
; HELPER ROUTINES
; =============================================================

get_input:
    push ebp
    mov ebp, esp

    push dword [ebp + 12]
    call print_str

    mov eax, 3          ; sys_read
    mov ebx, 0          ; stdin
    mov ecx, [ebp + 8]  ; buffer address
    mov edx, 63         ; max length
    int 0x80

    mov edi, [ebp + 8]
    add edi, eax
    dec edi
    cmp byte [edi], 10
    jne .skip_strip
    mov byte [edi], 0
.skip_strip:

    mov esp, ebp
    pop ebp
    ret 8

goto_xy:
    push ebp
    mov ebp, esp

    mov edi, pos_buf
    mov byte [edi], 27
    inc edi
    mov byte [edi], '['
    inc edi

    mov eax, [ebp + 8]
    call itoa

    mov byte [edi], ';'
    inc edi

    mov eax, [ebp + 12]
    call itoa

    mov byte [edi], 'H'
    inc edi

    mov edx, edi
    sub edx, pos_buf
    mov eax, 4
    mov ebx, 1
    mov ecx, pos_buf
    int 0x80

    mov esp, ebp
    pop ebp
    ret 8

print_str:
    push ebp
    mov ebp, esp
    push edi

    mov edi, [ebp + 8]
    xor ecx, ecx
.count_loop:
    cmp byte [edi + ecx], 0
    je .print_now
    inc ecx
    jmp .count_loop

.print_now:
    mov edx, ecx
    mov ecx, [ebp + 8]
    mov eax, 4
    mov ebx, 1
    int 0x80

    pop edi
    mov esp, ebp
    pop ebp
    ret 4

itoa:
    push ebx
    push ecx
    push edx

    mov ebx, 10
    xor ecx, ecx

.div_loop:
    xor edx, edx
    div ebx
    add edx, '0'
    push edx
    inc ecx
    test eax, eax
    jnz .div_loop

.pop_loop:
    pop edx
    mov [edi], dl
    inc edi
    loop .pop_loop

    pop edx
    pop ecx
    pop ebx
    ret