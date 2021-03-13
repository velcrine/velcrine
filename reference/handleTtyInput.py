#!/usr/bin/python3
import sys

#all the cli args
print(sys.argv[1:])

if not sys.stdin.isatty():
    inputs=list(map(str,sys.stdin))
    print(inputs)
    print(sys.stdin)
#run with
#./handleInput.py  >(cat) >(cat)  >(cat) >(cat)  >(echo) ;#sys.argv will have these /dev/fd/63...