[ -s "/Users/jponge/.jabba/jabba.sh" ] && \
source "/Users/jponge/.jabba/jabba.sh" && \

# Pick a default JDK
jabba use $(jabba ls | grep zulu | grep 1.11 | sort | tail -n 1)

export MAVEN_OPTS=-Xmx1563m
