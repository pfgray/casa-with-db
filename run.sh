
#setup environment vars
export NODE_ENV="production"
export COUCH_HOST="http://127.0.0.1"
export COUCH_PORT="5984"
export COUCH_DB_NAME="casa"

#configure couchdb
echo -e "\n[query_server_config]\nreduce_limit = false" >> /etc/couchdb/local.ini

#run couchdb
couchdb &

# wait for couchdb to be up, pulled from: http://stackoverflow.com/questions/11904772/how-to-create-a-loop-in-bash-that-is-waiting-for-a-webserver-to-respond
printf 'waiting for couchdb to get up'
until $(curl --output /dev/null --silent --head --fail http://localhost:5984); do
    printf '.'
    sleep 5
done

#run the app:
node /app/dist/server/app.js
