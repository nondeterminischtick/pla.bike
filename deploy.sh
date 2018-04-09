#!/bin/bash
#
# Build and deploy blog
#
hugo
git add --all
git commit -m "Commit from $(hostname) at $(date)"
git push
rsync -avzh public/* pla1.net:/var/www/pla.bike/.
