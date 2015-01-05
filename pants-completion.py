#!/usr/bin/env python

# goals=./pants goal goals | egrep -o -- '^ +([a-z-]+):' | egrep -o -- '[a-z-]+'
#
# for goal in $goals; do
#   echo $goal
#   ./pants goal $goal --help | egrep -o  -- '--([a-z-]+)' > $goal.options
# done

import os

for options in [ o for o in os.listdir('.') if o.endswith('options') ]:
  goal = options[:-8]
  tpl = """    %s)
      local opts='%s'
      __comp "$opts"
      ;;
"""
  with file(options, "rb") as f:
    content = f.read().replace('\n', ' ')
    print tpl % (goal, content)

# rm *.options
