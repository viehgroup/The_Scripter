#!/bin/bash

echo "=============================================================================================="
echo "                                       Starting SHELL STABILIZER                              "
echo "=============================================================================================="
source "$(pwd)/scripts/function.sh"

echo 'If you have shell then only it will work . Kill the process if not. '

echo ''


hide_guake

echo 'adding tty guys'
call_cmd "python -c 'import pty; pty.spawn(\"/bin/bash\")'"
ctrl Z
call_cmd "stty raw -echo"
call_cmd "fg"
call_cmd "export TERM=xterm"
