#!/bin/bash

mkdir -p /home/justin/.ssh/
sudo tee -a /home/justin/.ssh/authorized_keys <<-EOF
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDJuxshBkY42Rmj6u5jGXbREf6xMMDe1xcE4o7C4RzyQzfU6AFChspIUx4s5K7NS4AOWBWBPb/so1ZBDhaZewUbEXQcOytG8kAqROmhr+CtThdTY1cLW1+9NDFCwXmHwFme9TnFdxsw81Yind9a6WYIFJl2u0ss6KhGvB17ptZfOiHfO8aYi0zQz5lzzc3itLD6SKX0ayZeFLi/YMfc+sNsg3Fn+hdcsWRVfFn8kD087JSDOWu5Bb9z6Uo0Fmy1SULSpdaSREruJd65hSugYBZkiFPphi2evnVdt8/Ok7L7qq6wpjeYSNT0U4GgmPdI7oL6pJQ0n+xDcr8PA3HHO65x justin@socialites.im
EOF
chown -R justin:justin /home/justin/.ssh/

mkdir -p /home/sean/.ssh/
sudo tee -a /home/sean/.ssh/authorized_keys <<-EOF
sh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDKMu3coqyOYU3WNPhXvsJdbSpqFPocfA60JOwgIt/6yx9Ww4Z3sPwPCUqZkpVbYF1rZudVZo2W6CsjNXegJOOiCJJqPBzWUDkhUtukLCLskPduN46p/wSpDfTjQblOtSqLNjZJTKCeLw3hYIHe4PMOY5ovSTIczHdUuhJgsC56OKV586mJsiNI67TcAvxK+CW75PuUClVxTLf+rhL/dtl/Ihx9T/PKAdKab3rBxp77xor92zpw8BM7WlUbF8ApWeQmeig75R2nYbFgUUw+GuzfnSgZcopvTpWX9GQatSD8Hp1GjqNbWlEGjJddgE6JoPKLodKb0XecFMlxA2OTL/xb sean.cheng@geniecapital.com
EOF
chown -R sean:sean /home/sean/.ssh/

