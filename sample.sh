#!/bin/bash
# Fetch the list of top CPU consumers on the host using system commands such as `top`
top -b -n 1 | grep -E "%CPU|PID"