#define SIGCOUNT	22
#define sigmsg(sig) ((sig) <= SIGCOUNT ? sig_msg[sig] : "unknown signal")
