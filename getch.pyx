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

cdef extern from "termios.h":
    #--- This <termios.h> header file describe  a  general terminal interface that is provided to control asynchronous communications ports ---#

    unsigned int TCSANOW "TCSANOW" #Make the changes immediately
    unsigned int ICANON "ICANON" #flag for set or unset canonical mode

#* Canonical mode:- Input is made available line by line.  An input line is available when  one  of  the  line delimiters  is  typed (NL, EOL, EOL2; or EOF at the start of line).

#* Noncanonical mode:- Input is made availabe immediately,no processing is performed and line editing is disabled

    unsigned int ECHO "ECHO" #flag for enable echoing character 

    ctypedef unsigned int tcflag_t 

    struct termios:
#       tcflag_t c_iflag		 input mode flags #
#       tcflag_t c_oflag		 output mode flags #
#       tcflag_t c_cflag		 control mode flags #
        tcflag_t c_lflag		#_local mode flags #

#    tcgetattr() gets the parameters associated with the object referred by fd and stores them in  the termios structure referenced by termios_p

    int tcgetattr(unsigned int _fd, termios *termios_p) 

#    tcsetattr() sets the parameters associated with the terminal from the termios structure referred to by termios_p

    int tcsetattr(unsigned int _fd, unsigned int _fd, termios *termios_p)


