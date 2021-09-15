source env.sh

PIDFILE=$OVERHEID_HOME/overheid.pid

if [ -f "$PIDFILE" ]; then
  kill `cat $PIDFILE`
  rm $PIDFILE
fi
