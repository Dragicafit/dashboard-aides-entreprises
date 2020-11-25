datafolder="$(dirname "$(pwd)")"/utils/
echo "CREATE TABLE NAF"
psql -d dashboard -c "DROP TABLE IF EXISTS nace17;"
echo "DROP TABLE OK"
psql -d dashboard -f "sql/create_table_nace17.sql"
echo "CREATE TABLE OK"
psql -d dashboard -c "\copy nace17(code_section_nace17,libelle_long,libelle,color) FROM '"$datafolder"nace17.csv' delimiter ',' csv header encoding 'UTF8';"

