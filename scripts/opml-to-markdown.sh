#!/usr/bin/env bash

# Source: https://github.com/scottslowe/scripts/blob/master/opml2mmd

# Assign help text to variable for user later
HELP="Usage: opml2mmd [SOURCE] [DEST]"
NUMPARAMS="Error: Incorrect number of parameters"

# If the user supplied no parameters, then provide help text
if [ "$#" -eq 0 ]; then
    echo $NUMPARAMS
    echo
    echo $HELP
    echo
    exit
fi

# If the user supplied "--help", then provide help text
if [ "$1" = "--help" ]; then
    echo $HELP
    echo
    exit
fi

# Ensure that exactly 2 parameters were given
# Display error message and help text otherwise
if [ "$#" -ne 2 ]; then
    echo $NUMPARAMS
    echo
    echo $HELP
    echo
    exit
fi

# Check that source exists and is a normal file
# Display error message otherwise
if [ ! -f "$1" ]; then
    echo "Error: invalid source file supplied"
    echo
    exit
fi

# Assign parameters to variables for use later
SRC="$1"
DST="$2"

# Use pandoc to convert OPML to MMD (assumes pandoc is in the search path);
# then use sed to transform the document
pandoc --from=opml --to=markdown_mmd --atx-headers "$SRC" | \
sed -e 's/^## /* /g' | \
sed -e 's/^### /    * /g' | \
sed -e 's/^#### /        * /g' | \
sed -e 's/^##### /            * /g' > "$DST"
