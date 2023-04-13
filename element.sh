#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"

ATOMIC_NUMBER=$($PSQL "SELECT atomic_number FROM properties FULL JOIN elements USING(atomic_number) WHERE atomic_number=$1 OR symbol='$1' OR name = '$1'")
echo $ATOMIC_NUMBER
: 'if [[ $1 ]]
  then 
    ATOMIC_NUMBER=$($PSQL "SELECT atomic_number FROM properties FULL JOIN elements USING(atomic_number) WHERE atomic_number=$1 OR symbol='$1' OR name = '$1'")
    NAME=$($PSQL "SELECT name FROM properties FULL JOIN elements USING(atomic_number) WHERE atomic_number=$1 OR symbol='$1' OR name = '$1'")
    SYMBOL=$($PSQL "SELECT symbol FROM properties FULL JOIN elements USING(atomic_number) WHERE atomic_number=$1 OR symbol='$1' OR name = '$1'")
    TYPE=$($PSQL "SELECT type FROM properties FULL JOIN elements USING(atomic_number) WHERE atomic_number=$1 OR symbol='$1' OR name = '$1'")
    MASS=$($PSQL "SELECT atomic_mass FROM properties FULL JOIN elements USING(atomic_number) WHERE atomic_number=$1 OR symbol='$1' OR name = '$1'")
    MELTING_POINT=$($PSQL "SELECT melting_point_celsius FROM properties FULL JOIN elements USING(atomic_number) WHERE atomic_number=$1 OR symbol='$1' OR name = '$1'")
    BOILING_POINT=$($PSQL "SELECT boiling_point_celsius FROM properties FULL JOIN elements USING(atomic_number) WHERE atomic_number=$1 OR symbol='$1' OR name = '$1'")
  else
    echo Please provide an element as an argument.
fi
'
