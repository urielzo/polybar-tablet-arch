#!/bin/sh

## POLYWINS ##

# SETTINGS # ---------------------------------------------------------------------

separator=" "
show="window_combined"
char_limit=40 # useful with window_title
char_case="upper" # options: normal, upper, lower
add_spaces="true"

# --------------------------------------------------------------------------------


# SETUP # ------------------------------------------------------------------------

actv_win_left="%{F#0D1918}%{B$(xrdb -query | awk '/*.color9/ {print substr($2,1)}')}"
actv_win_right="%{F- B-}"

active_workspace=$(wmctrl -d | awk '/\*/ {print $1}')
active_window=$(xprop -root _NET_ACTIVE_WINDOW | awk '{print "0x0"substr($5,3)}')

# --------------------------------------------------------------------------------


# WINDOW LIST # ------------------------------------------------------------------

window_list=$(wmctrl -lx | awk -vORS="" -vOFS="" \
	-v active_workspace="$active_workspace" \
	-v active_window="$active_window" \
	-v active_left="$actv_win_left" \
	-v active_right="$actv_win_right" \
	-v inactive_left="$inactv_win_left" \
	-v inactive_right="$inactv_win_right" \
	-v separator="$separator" \
	-v show="$show" \
	-v c_case="$char_case" \
	-v char_limit="$char_limit" \
	-v add_spaces="$add_spaces" \
	-v on_click="$0" \
	'{
	if ($2 != active_workspace && $2 != "-1") { next }
	if ($3 ~ "polybar" || $3 ~ "yad") { next }

	if (show == "window_class") {
		lastitem=split($3,classname_and_class,".")
		displayed_name = classname_and_class[lastitem]
	}
	else if (show == "window_classname") {
		split($3,classname_and_class,".")
		displayed_name = classname_and_class[1]
	}
	else if (show == "window_combined") {
		# format window title from wmctrl output
        lastitem=split($3,classname_and_class,".")
		title = ""
		for (i = 5; i <= NF; i++) {
			title = title $i
			if (i != NF) { title = title " "}
		}
		displayed_name = classname_and_class[lastitem] " | " title
	}

	if      (c_case == "lower") { displayed_name = tolower(displayed_name) }
	else if (c_case == "upper") { displayed_name = toupper(substr(displayed_name,1,1)) tolower(substr(displayed_name,2)) }

	if (length(displayed_name) > char_limit) {
		displayed_name = substr(displayed_name,1,char_limit)"…"
	}

	if (add_spaces == "true") { displayed_name = "  "displayed_name"  " }

	if ($1 == active_window) {
		displayed_name=active_left displayed_name active_right
	}
	else {
		displayed_name=inactive_left displayed_name inactive_right
	}

	if (non_first == "") { non_first = "true" } else {
		print separator # only on non-first items
	}

	print displayed_name	
	}')

echo "$window_list" 

# --------------------------------------------------------------------------------
