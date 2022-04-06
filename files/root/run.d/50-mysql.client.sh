if [ ! -z $MYSQL_HOST ] && [ ! -z $MYSQL_USERNAME ] && [ ! -z $MYSQL_PASSWORD ]; then
    sed -i "s|host=.*|host=${MYSQL_HOST}|g" /etc/my.cnf.d/database.cnf
    sed -i "s|user=.*|user=${MYSQL_USERNAME}|g" /etc/my.cnf.d/database.cnf
    sed -i "s|password=.*|password=${MYSQL_PASSWORD}|g" /etc/my.cnf.d/database.cnf
fi