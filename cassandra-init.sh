echo "=========================================================================================================================="
echo "starting running cqlsh"
echo "=========================================================================================================================="

cassandra  &
while : ;do

  # Get the status of this machine from the Cassandra nodetool
  STATUS=`nodetool status | grep 'UN' | awk '{print $1}'`
	echo $STATUS
  # Once the status is Up and Normal, then we are ready
  if [ $STATUS = "UN" ]; then	
	cqlsh -f /tmp/cassandra-schema.cql
	break    	
  fi

  sleep 1;

done

