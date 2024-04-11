/* Generated automatically */
static const struct gsu_hash gdbm_hash_gsu;
static int bin_ztie _((char*nam,char**args,Options ops,UNUSED(int func)));
static int bin_zuntie _((char*nam,char**args,Options ops,UNUSED(int func)));
static int bin_zgdbmpath _((char*nam,char**args,Options ops,UNUSED(int func)));
static char*gdbmgetfn _((Param pm));
static void gdbmsetfn _((Param pm,char*val));
static void gdbmunsetfn _((Param pm,UNUSED(int um)));
static HashNode getgdbmnode _((HashTable ht,const char*name));
static void scangdbmkeys _((HashTable ht,ScanFunc func,int flags));
static void gdbmhashsetfn _((Param pm,HashTable ht));
static void gdbmuntie _((Param pm));
static void gdbmhashunsetfn _((Param pm,UNUSED(int exp)));
