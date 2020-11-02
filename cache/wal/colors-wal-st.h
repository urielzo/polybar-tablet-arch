const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#121212", /* black   */
  [1] = "#746B68", /* red     */
  [2] = "#924D37", /* green   */
  [3] = "#867972", /* yellow  */
  [4] = "#867F7F", /* blue    */
  [5] = "#91847B", /* magenta */
  [6] = "#978E8B", /* cyan    */
  [7] = "#dad6d2", /* white   */

  /* 8 bright colors */
  [8]  = "#989593",  /* black   */
  [9]  = "#746B68",  /* red     */
  [10] = "#924D37", /* green   */
  [11] = "#867972", /* yellow  */
  [12] = "#867F7F", /* blue    */
  [13] = "#91847B", /* magenta */
  [14] = "#978E8B", /* cyan    */
  [15] = "#dad6d2", /* white   */

  /* special colors */
  [256] = "#121212", /* background */
  [257] = "#dad6d2", /* foreground */
  [258] = "#dad6d2",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
