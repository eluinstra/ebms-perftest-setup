TEST=${1:-soap}
source env.sh

export JVM_ARGS="-Xms2048m -Xmx4096m"
nohup ./apache-jmeter-5.4.1/bin/jmeter.sh -n -t $JMETER_DATA/ebms-perf-${TEST}.jmx -l $JMETER_DATA/jmeter-${VERSION}-${TEST}.csv > $JMETER_DATA/jmeter-${VERSION}-${TEST}.out &

