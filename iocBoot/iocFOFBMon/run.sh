#!/bin/sh
exec procServ -f -i ^C^D -L - unix:./ioc.sock ./st.cmd
