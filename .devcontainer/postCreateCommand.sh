#!/bin/bash

mkdir -p /home/vscode/.m2

cat << 'EOF' > /home/vscode/.m2/toolchains.xml
<?xml version="1.0" encoding="UTF-8"?>
<toolchains>
    <toolchain>
        <type>jdk</type>
        <provides>
            <version>25</version>
        </provides>
        <configuration>
            <jdkHome>/usr/local/sdkman/candidates/java/25.0.4-tem</jdkHome>
        </configuration>
    </toolchain>
</toolchains>
EOF

chown -R vscode:vscode /home/vscode/.m2
