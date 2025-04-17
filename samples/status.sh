#!/bin/bash

ps -e -o pid,user,pri,ni,vsz,rss,wchan,stat,time,cmd | grep -v Z | sort -k 7 -n | less