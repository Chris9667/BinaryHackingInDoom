[ENABLE]
// Hook auf die echte Health-Subtraktion bei 0042BFFC
alloc(newmem,64,0042BFFC)
label(return)

newmem:
  xor esi,esi         // Schaden = 0
  sub eax,esi         // führt Sub aus, aber EAX bleibt unverändert
  jmp return

0042BFFC:
  jmp newmem
return:

[DISABLE]
0042BFFC:
  db 29 F0           // Original: sub eax, esi
dealloc(newmem)
