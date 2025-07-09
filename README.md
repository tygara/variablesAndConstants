# Variables and Constants

## Process
The process for this lab was challenging and tedious to get correct. The code that was given was a little confusing to me. Having the `.bss` & `.data` segment at the bottom was messing with my head. I changed it to be at the top as it makes it much easier for me to read as far as flow goes. I hope this is okay and isn't breaking any conventions. From here, I used the flow chart to create a brief outline of how I was going to approach this lab. I broke the lab up into the design phase, the implementation phase, and the debugging phase. 

### Design 
In the design phase, I reviewed the requirments and broke them down into three core steps, assining values to `var1` & `var2`, peforming the addition, and storing the result. I identified the appropriate memory sections to store and initialize these values:
`.data` for initialized variables and `.bss` for the uninitialized ones. I made sure to plan out the instructions needed for the 
arithmetic and understood how each register would be used in the process.

### Implementation
I wrote the assembly code with careful attention to syntax (I'm using neovim with an LSP setup) and instruction order. I used comments to keep track of each operation, which helps avoid confusion since I'm in the early stages of learning. I also named the sections of code `main_body` and `exit_program` so that I could set breakpoints on them in GDB. After writing the initial version, I compiled the code and prepared for the debugging process.

### Debugging
This phase was the most difficult for me to get right, but was also the part that I feel I learned the most. I ran into issues with GDB not stopping where I expected, and I had to learn how to properly set breakpoints and use the `watch` command to observe changes to the result variable. I used the `info address result` command to locate the memory address and then watched that address with a `type cast`. It took some trial and error to understand that the program would skip past variable changes if the watchpoint wasn't set beforehand. In the end, I stepped through the instructions, stopping at a specific breakpoint to verify the result with `watch *(int*)` on its memory address.

[Flowchart](docs/constants_variables.drawio.png)  

[GDB-Debugging](docs/gdbDbugging.png)
