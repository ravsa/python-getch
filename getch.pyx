cdef extern from "unistd.h":
    #---This <unistd.h> header file defines miscellaneous symbolic Constants, Macros and Types ---#

#   ---Standard file descriptors.--- 
#   STDIN_FILENO   0  /* Standard input.  */
#   STDOUT_FILENO  1  /* Standard output.  */
#   STDERR_FILENO  2  /* Standard error output.  */

    unsigned int STDIN_FILENO "STDIN_FILENO"

cdef extern from "stdio.h":
    #--- This <stdio.h> header file standard Input/Output library functions and Macros ---#

    int getchar() #Read a character form stdin 


