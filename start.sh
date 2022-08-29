#!/bin/sh

cat << EOF > /conf.ini
[System]
Debug = false
Mode = master
Listen = :5212
SessionSecret = gKgAahH5nPWJZ2R3Ozz6ZSTIEOCUN0veppJ8ItYsGDaL9YKqWEGZFEt5idQVKMw2
HashIDSalt = TkfGFcKECYZa5NQZGH4fv0OEV6jnUMiDywpf8Xq9J7aaqFYYcb1nvi5MWybYdywK

[Database]
Type = mysql
Port = ${PORT}
User = ${USER}
Password = ${PASS}
Host = ${HOST}
Name = ${NAME}
TablePrefix = cd
Charset = utf8
EOF

