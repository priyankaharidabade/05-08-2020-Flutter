#!/usr/bin/python3

import subprocess

print("content-type: text/html")
print()
cmd = subprocess.getoutput("date")
print()
print("Printing date command\n")
print(cmd)
