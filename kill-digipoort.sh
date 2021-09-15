source env.sh

PIDFILE=$DIGIPOORT_HOME/digipoort.pid

if [ -f "$PIDFILE" ]; then
  kill `cat $PIDFILE`
  rm $PIDFILE
fi
