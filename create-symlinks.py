#!/usr/bin/python
# -*- coding: utf-8 -*-

from os import *
from os.path import *
from sys import exit
from subprocess import *

homedir = environ["HOME"]
dotfiles = join(homedir, "Coding/git/test")

ff_profile = Popen(["-c", "awk -F\= '/Path/ {print $2}' ~/.mozilla/firefox/profiles.ini"],
		stdin=PIPE, stdout=PIPE, shell=True)
profile = ff_profile.communicate()[0]

def symlinkfile(fname):
    source = relpath(dotfiles+"/"+fname, dirname(homedir+"/."+fname))
    if fname == "userChrome.css":
	    target = homedir+"/.mozilla/firefox/"+profile.rstrip()+"/chrome/"+fname
    else:
    	target = homedir+"/."+fname
    if not islink(target):
        if exists(target):
            print("WARNING: %s exists" % target)
        else:
            print("creating symlink: %s\n\t→ %s" % (target, source))
            symlink(source, target)

def makelinks(path = "."):
    if path != ".":
        dirpath = normpath(join(homedir,'.'+path))
    else:
        dirpath = normpath(join(homedir,path))

    if not exists(dirpath):
        print("mkdir: %s" % dirpath)
        mkdir(dirpath)

    for fname in listdir(path):
        # skip this script and files starting with a dot
        if fname == normpath(__file__) or fname[0] == '.':
            print("skipping %s" % fname)
            continue

        filepath=normpath(join(path, fname))

        if isfile(filepath):
            symlinkfile(filepath)
        elif isdir(filepath):
            makelinks(filepath)
        else:
            print("neither file nor dir: %s" % filepath)

if abspath(".") != dotfiles:
    exit("ERROR: script must be run from ~/.dotfiles")

makelinks()
