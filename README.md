# LatexDocs
Latex documents for Examples and use cases.


Compilers Presentation:

#Compiladores

[TOC]
    - What is a compiler
    - Phases of a compiler
        - Lexical analysis
        - Syntax analysis
        - semantic analysis
        - Code generation
    - Assembler
    - Linker

Expected outcomes:
    - understand how compilers work
        How to rewrite the code to that the compiler can to its job better
    - understan language and architectre design tradeoffs
        e.g., Why are error mesasges in compilers sometimes not usefull at all
        e.g., Why some implementations wont allow parallelizing and some others will
    - Either you think this is usefull or not, you are right.

[Slide_1]
There are to major strategies
    compilers:
        Translate programs to a machine executable code. with extensive processing
    Interpreters
        Run the program "as is" without preliminary translation:
            Successive phases of translation and execution
[Slide_2]
    The compiler reads a program written in one language (source) and translates it
    into an equivalent program in another language - the target language -

    This process can be divided in two parts: Analysis and synthesis
        Analysis: Breaks the source program into constituent pieces and creates representation
        - Lexical, syntax and semantic analysis
        Synthesis: Generates the target program form the intermediate representation
        - Code generator, and optimizer
[Slide_3]
    #Architecture of a compiler 
    (IMAGE of the phases of the compilation)[]

[Slide_4]
    ##Lexical Analysis:
        The program is considered as a unique sequence of characters
        The compiler reads the program left-to-right and extracts "tokens"
        tokens are lexical units with a collective meaning
        The secuence of characters from which  a token is created is called "lexeme"

[Slide_5]
    Example of a lexical analysis and symbol table creation
    For every lexeme an ID token is generated in the symbol table.
        Statement: 'position = initial + rate * 60';
    
        Lexeme       |    Token
        -----------------------
        Position     | ID_0
           =         | =
        initial      | ID_1
           +         | +
        rate         | ID_2
           *         | *
           60        | CONST_NUM

     From this table every ID gets several attributes 
     The attributes are, but are not limited to:
        - Storage
        - Type
        - Size
        - Scope

[Slide_6]
    ##Syntactic Analysis
    - AKA parsing
    - In this phase the tokens are grouped into 'grammatical phrases' represented by a parse tree
    - This tree gives hierarchical structure to the source program

            assignment
            /   |    \
           /    =     \
        ID_0          expr
                    /  |  \
                   /   +   \
                expr       expr
                 |        / | \
                ID_1     /  *  \
                      expr     expr
                        |       |
                      ID_2   CONST_NUM
                                |
                               60
    Here is where the precendence of the operators is important, the tree is built
    with that as a basis

[Slide_7]
    ##Semantic Analysis
    This pahse checks for semantic errors - Type checking -

[Slide_8]
    ##Intermediate Code optimization (?)
    An intermediate code NOT assembly code
    Should be easy to translate into the target program
[Slide_9]
    ##Code Optimization
    This phase uses intermediate code so that faster-running machine code can be obtained
    This is dependent of the compiler and the options given to it

    Common code optimizations
        Address optimization
        loop collapsing
        branch elimination
        Constant propagation
        Invariant expression elimination

[Slide_11]
    ##Code generation
    This phase generates the target code assembly is the most common for C
    1.- Memory locations are selected for each variable (ABI)
    2.- Instructions are translated into a sequence of assembly instructions
    3.- Variables and intermediate results are assigned to memory registers
[Slide_12]
    ##Assembler
    Is responsable for translating the target code - usually assembly - into an executable 
    machine code

    The assembly code us a mnemonic version of machine code in which:
        1.- Names are used instead of binary codes for operations
        2.- Names are used for operands instead of memory locations
[Slide_13]
    ##Loader and Linker
    The loader alters the relocatable addresses of the code to place both instructions
    and data in the right place in the main memory (Taking into accoint the virtual memory)

    The starting free address - X - in main memory to allocate the program is called
    the relocation factor, 
        The loader has to
            1.- Add to each address the relocation factor - X -
            2.- Leave unaltered each absolute address, for example those related to I/O devices

    The linker - Links - together the different files/modules of a single program
    and possibly, adds library files
[Slide_14]
[Slide_15]
[Slide_16]
[Slide_17]
[Slide_18]
[Slide_19]
[Slide_20]





References:
    Modern comiler implementation
