/* Generated automatically */
static void zleunsetfn _((Param pm,int exp));
static void set_buffer _((UNUSED(Param pm),char*x));
static char*get_buffer _((UNUSED(Param pm)));
static void set_cursor _((UNUSED(Param pm),zlong x));
static zlong get_cursor _((UNUSED(Param pm)));
static void set_mark _((UNUSED(Param pm),zlong x));
static zlong get_mark _((UNUSED(Param pm)));
static void set_region_active _((UNUSED(Param pm),zlong x));
static zlong get_region_active _((UNUSED(Param pm)));
static void set_lbuffer _((UNUSED(Param pm),char*x));
static char*get_lbuffer _((UNUSED(Param pm)));
static void set_rbuffer _((UNUSED(Param pm),char*x));
static char*get_rbuffer _((UNUSED(Param pm)));
static char*get_prebuffer _((UNUSED(Param pm)));
static char*get_widget _((UNUSED(Param pm)));
static char*get_widgetfunc _((UNUSED(Param pm)));
static char*get_widgetstyle _((UNUSED(Param pm)));
static char*get_lwidget _((UNUSED(Param pm)));
static char*get_keymap _((UNUSED(Param pm)));
static char*get_keys _((UNUSED(Param pm)));
static zlong get_keys_queued_count _((UNUSED(Param pm)));
static void set_numeric _((UNUSED(Param pm),zlong x));
static zlong get_numeric _((UNUSED(Param pm)));
static void unset_numeric _((Param pm,int exp));
static void set_histno _((UNUSED(Param pm),zlong x));
static zlong get_histno _((UNUSED(Param pm)));
static zlong get_bufferlines _((UNUSED(Param pm)));
static zlong get_pending _((UNUSED(Param pm)));
static zlong get_recursive _((UNUSED(Param pm)));
static zlong get_yankstart _((UNUSED(Param pm)));
static zlong get_yankend _((UNUSED(Param pm)));
static zlong get_yankactive _((UNUSED(Param pm)));
static void set_yankstart _((UNUSED(Param pm),zlong i));
static void set_yankend _((UNUSED(Param pm),zlong i));
static zlong get_isearchmatchstart _((UNUSED(Param pm)));
static zlong get_isearchmatchend _((UNUSED(Param pm)));
static zlong get_isearchmatchactive _((UNUSED(Param pm)));
static zlong get_suffixstart _((UNUSED(Param pm)));
static zlong get_suffixend _((UNUSED(Param pm)));
static zlong get_suffixactive _((UNUSED(Param pm)));
static char*get_cutbuffer _((UNUSED(Param pm)));
static void set_cutbuffer _((UNUSED(Param pm),char*x));
static void unset_cutbuffer _((Param pm,int exp));
static void set_killring _((UNUSED(Param pm),char**x));
static char**get_killring _((UNUSED(Param pm)));
static void unset_killring _((Param pm,int exp));
static void set_register _((Param pm,char*value));
static void unset_register _((Param pm,UNUSED(int exp)));
static void scan_registers _((UNUSED(HashTable ht),ScanFunc func,int flags));
static HashNode get_registers _((UNUSED(HashTable ht),const char*name));
static void set_registers _((Param pm,HashTable ht));
static void unset_registers _((Param pm,int exp));
static void set_predisplay _((UNUSED(Param pm),char*x));
static char*get_predisplay _((UNUSED(Param pm)));
static void set_postdisplay _((UNUSED(Param pm),char*x));
static char*get_postdisplay _((UNUSED(Param pm)));
static char*get_lasearch _((UNUSED(Param pm)));
static char*get_lsearch _((UNUSED(Param pm)));
static char*get_context _((UNUSED(Param pm)));
static char*get_zle_state _((UNUSED(Param pm)));
