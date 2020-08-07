#!/usr/bin/python3

import subprocess

print("content-type: text/html")
print()
cmd = subprocess.getoutput("cal")
print()
print("Printing cal command\n")
print(cmd)
