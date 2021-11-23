#!/bin/bash
# This script is supposed to be run from the repository where your 
# code that will be released with the re-usable workflow is stored.

echo "Entering SagaActions..."
cd .github/SagaActions
git remote update
if [[ $(git diff @{upstream} --name-only | grep workflows | wc -l) -ne 0 ]] ;
then
   echo "Workflows have been updated!"
   git pull
   cp workflows/*.{yaml,yml} ../workflows/ 2>/dev/null
   cd .. && git add workflows/ SagaActions/
   git commit -m "Auto-committing updates to workflows"
   echo "Exiting"
   cd ..
else
   echo "No updates were found. Exiting."
   cd ../..
fi
