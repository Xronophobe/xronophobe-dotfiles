FUNCTIONS=$(pwd)

if [ -d $FUNCTIONS/functions ]; then
  for file in $FUNCTIONS/functions/*.sh; do
    source $file
  done
fi
