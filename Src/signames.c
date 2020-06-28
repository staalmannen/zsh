/** signames.c                                 **/
/** architecture-customized signames.c for zsh **/

#define SIGCOUNT	22

#include "zsh.mdh"

/**/
#define sigmsg(sig) ((sig) <= SIGCOUNT ? sig_msg[sig] : "unknown signal")
/**/
mod_export char *sig_msg[SIGCOUNT+2] = {
	"done",
	"hangup",
	"interrupt",
	"quit",
	"illegal hardware instruction",
	"abort",
	"floating point exception",
	"killed",
	"segmentation fault",
	"broken pipe",
	"alarm",
	"terminated",
	"user-defined signal 1",
	"user-defined signal 2",
	"bus error",
	"death of child",
	"continued",
# ifdef USE_SUSPENDED
	"suspended (signal)",
# else
	"stopped (signal)",
# endif
# ifdef USE_SUSPENDED
	"suspended",
# else
	"stopped",
# endif
# ifdef USE_SUSPENDED
	"suspended (tty input)",
# else
	"stopped (tty input)",
# endif
# ifdef USE_SUSPENDED
	"suspended (tty output)",
# else
	"stopped (tty output)",
# endif
	"virtual time alarm",
	"profile signal",
	NULL
};

/**/
char *sigs[SIGCOUNT+4] = {
	"EXIT",
	"HUP",
	"INT",
	"QUIT",
	"ILL",
	"ABRT",
	"FPE",
	"KILL",
	"SEGV",
	"PIPE",
	"ALRM",
	"TERM",
	"USR1",
	"USR2",
	"BUS",
	"CHLD",
	"CONT",
	"STOP",
	"TSTP",
	"TTIN",
	"TTOU",
	"VTALRM",
	"PROF",
	"ZERR",
	"DEBUG",
	NULL
};
