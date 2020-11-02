static const char norm_fg[] = "#dad6d2";
static const char norm_bg[] = "#121212";
static const char norm_border[] = "#989593";

static const char sel_fg[] = "#dad6d2";
static const char sel_bg[] = "#924D37";
static const char sel_border[] = "#dad6d2";

static const char urg_fg[] = "#dad6d2";
static const char urg_bg[] = "#746B68";
static const char urg_border[] = "#746B68";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
