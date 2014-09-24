#!/bin/bash

leetcode_name="$1"

if [ -z "$leetcode_name" ]; then
    echo $0 "leetcode_name"
    exit;
fi

now=`date --rfc-3339=seconds`

mkdir -p $leetcode_name

#true > $leetcode_name/index.md
#for line in $TEMPLE; do echo $line >> $leetcode_name/index.md; done
cat > $leetcode_name/index.md <<EOL
---
layout: solution
title: FIXME
date: $now
---
{% assign leetcode_name = {{page.path | remove: '/index.md'}}  %}
{% assign leetcode_readme = {{leetcode_name | append: '/README.md' | prepend: '_root/' }}  %}
{% include {{leetcode_readme}} %}
EOL


touch $leetcode_name/README.md
touch $leetcode_name/Solution.java
