# assembly-2022
Assembly course for the academic year (2021-)2022

## assembly instruction list

### Register

#### EAX (32 bits)
Accumulator register use for arthmetic operations and storage of the return value. 
sub register : AX, AH, AL (8 bits) 

#### EDX (32 bits)
Data register use for arithmetic operationss and in/out.
sub register : BX, BH, BL (8 bits)

#### ECX (32 bits) 
Counter register use for counter for instructions for looping
sub register : CX, CH, CL (8 bits)

#### EBX
Base register use as file descriptor  
sub register : DX, DH, DL (8 bits)

#### EDI 

sub register : DI (8 bits)

#### ESI

sub register : SI (8 bits)

### operations 
#### mov 
it's the assembly command for the affectation 
```asm
mov EAX, 3 ;EAX take the value 3
```
#### int 
it's the assembly command for the interuption
```asm
int 80h ;sys call
```
#### and (resp or, not, xor, add, sumb, imul, idiv)
it' the assembly command for the binary and 
```asm
and eax,ebx; binary and between eax and ebx register, return value on the first register
```
#### inc (resp dec)
it's the assembly command for increment a value
```asm
inc ecx ;increment the value of ecx
```
#### SHR(resp SHL)
bit shift right
```asm
shr eax
```
#### call
call a fonction 
```asm
call sum
```
#### ret
return a value 
```asm
ret eax
```
#### cmp
compare two values
```asm
cmp eax, edx ;return the result of cmp (-1,0,1) for the jump condition
```
#### jmp
jump into a line/label
```asm
jmp loop
```






