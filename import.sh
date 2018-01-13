#!/bin/bash

#DB = $1


#pgdbf ADDROBJ.DBF | iconv -f cp866 -t utf-8 | psql $DB
#pgdbf SOCRBASE.DBF | iconv -f cp866 -t utf-8 | psql $DB

for FILENAME in `find . -type f -name "ADDROB*.DBF"`
do
pgdbf $FILENAME | iconv -f cp866 -t utf-8 | psql -h 0.0.0.0 -U admin -d fias
done

pgdbf SOCRBASE.DBF | iconv -f cp866 -t utf-8 | psql -h 0.0.0.0 -U admin -d fias
