[ENABLE]
alloc(newmem, 128, // Address for the sound function)
label(return)

newmem:
// eax is the pointer to the current sound
// overwrite it with our own data pointer
push eax
mov eax, CustomSound     // use our own address
mov [esp+4], eax         // engine now thinks the sound pointer points here
pop eax
jmp return

Soundfunktion:
jmp newmem
nop
return:

// our new sound
alloc(CustomSound, 256)
CustomSound:
// This is where you need to insert the 8-bit PCM sound data
db 80 80 80 80 80 80 80 80 80 80 80 80 80 80 80 80
db 80 80 80 80 80 80 80 80 80 80 80 80 80 80 80 80

[DISABLE]
CustomSound:
// restore original bytes
db ...
dealloc(newmem)
dealloc(CustomSound)
