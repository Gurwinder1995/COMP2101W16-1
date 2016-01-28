#!/bin/bash
# this script intelligently backs up the files found in my ~/bin to
# ~/backups

cd ~
rsync -av ~/bin/. ~/backups/