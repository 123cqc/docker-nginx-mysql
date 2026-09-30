#!/bin/bash
BACKUP_DIR=/home/qiancheng/myproject/backups
DATE=$(date +%y%m%d)
mkdir -p $BACKUP_DIR
docker exec mysql mysqldump -uroot -proot123 mydb >$BACKUP_DIR/mydb_$DATE.sql
find $BACKUP_DIR -name "*.sql" -mtime +7 -delete
echo "backup done: mydb_$DATE.sql"
