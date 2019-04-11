.global _start
_start:
bl main
mov x8,#93
mov w0,#0
svc 0
