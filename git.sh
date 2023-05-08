#!/bin/bash
commit=`date +%Y-%m-%d.%H-%M-%S`
git add .
git commit -m $commit
git push
