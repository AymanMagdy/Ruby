#!/bin/bash

for (( i=1; i <= 12; i++ )) {
    touch $i.rb
    echo "#!/bin/usr/ruby -w" > $i.rb
}