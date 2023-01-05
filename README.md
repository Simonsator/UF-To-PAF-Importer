# Import Ultimate Friends to Party And Friends SQL Script #

This script imports friend data from Ultimate Friends to Party And Friends.

Only who is friend with whom is imported, not the friend requests, when they where last seen, nor the users user
settings.

## Import Steps ##

1. In the Party And Friends config you have to use the same database as Ultimate Friends and the default table prefix ("
   fr_")
2. If you already have data in your Party And Friends database, you have to delete all tables with the prefix "fr_"
3. Startup Party And Friends so that the tables are created
4. Execute the SQL script "Import.sql"