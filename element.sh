#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"


AN_ARG=$($PSQL "SELECT atomic_number FROM properties FULL JOIN elements USING(atomic_number) WHERE atomic_number = $1")
if [[ -z $AN_ARG ]]
  then
    echo Put a valid element
  else 
  ATOMIC_NUMBER=$($PSQL "SELECT atomic_number FROM properties FULL JOIN elements USING(atomic_number) WHERE atomic_number = $1")
  TYPE=$($PSQL "SELECT type FROM properties FULL JOIN elements USING(atomic_number) WHERE atomic_number = $1")
  MASS=$($PSQL "SELECT atomic_mass FROM properties FULL JOIN elements USING(atomic_number) WHERE atomic_number = $1")
  MELTING=$($PSQL "SELECT melting_point_celsius FROM properties FULL JOIN elements USING(atomic_number) WHERE atomic_number = $1")
  BOILING=$($PSQL "SELECT boiling_point_celsius FROM properties FULL JOIN elements USING(atomic_number) WHERE atomic_number = $1")
  SYMBOL=$($PSQL "SELECT symbol FROM properties FULL JOIN elements USING(atomic_number) WHERE atomic_number = $1")
  NAME=$($PSQL "SELECT name FROM properties FULL JOIN elements USING(atomic_number) WHERE atomic_number = $1")

  echo "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $MASS amu. $NAME has a melting point of $MELTING celsius and a boiling point of $BOILING celsius."
fi


SY_ARG=$($PSQL "SELECT symbol FROM properties FULL JOIN elements USING(atomic_number) WHERE symbol = '$1'")
if [[ -z $SY_ARG ]]
  then
    echo Put a valid element
  else 
  ATOMIC_NUMBER=$($PSQL "SELECT atomic_number FROM properties FULL JOIN elements USING(atomic_number) WHERE symbol = '$1'")
  TYPE=$($PSQL "SELECT type FROM properties FULL JOIN elements USING(atomic_number) WHERE symbol = '$1'")
  MASS=$($PSQL "SELECT atomic_mass FROM properties FULL JOIN elements USING(atomic_number) WHERE symbol = '$1'")
  MELTING=$($PSQL "SELECT melting_point_celsius FROM properties FULL JOIN elements USING(atomic_number) WHERE symbol = '$1'")
  BOILING=$($PSQL "SELECT boiling_point_celsius FROM properties FULL JOIN elements USING(atomic_number) WHERE symbol = '$1'")
  SYMBOL=$($PSQL "SELECT symbol FROM properties FULL JOIN elements USING(atomic_number) WHERE symbol = '$1'")
  NAME=$($PSQL "SELECT name FROM properties FULL JOIN elements USING(atomic_number) WHERE symbol = '$1'")

  echo "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $MASS amu. $NAME has a melting point of $MELTING celsius and a boiling point of $BOILING celsius."
fi


NAME_ARG=$($PSQL "SELECT name FROM properties FULL JOIN elements USING(atomic_number) WHERE name = '$1'")
if [[ -z $NAME_ARG ]]
  then
    echo Put a valid element
  else 
  ATOMIC_NUMBER=$($PSQL "SELECT atomic_number FROM properties FULL JOIN elements USING(atomic_number) WHERE name = '$1'")
  TYPE=$($PSQL "SELECT type FROM properties FULL JOIN elements USING(atomic_number) WHERE name = '$1'")
  MASS=$($PSQL "SELECT atomic_mass FROM properties FULL JOIN elements USING(atomic_number) WHERE name = '$1'")
  MELTING=$($PSQL "SELECT melting_point_celsius FROM properties FULL JOIN elements USING(atomic_number) WHERE name = '$1'")
  BOILING=$($PSQL "SELECT boiling_point_celsius FROM properties FULL JOIN elements USING(atomic_number) WHERE name = '$1'")
  SYMBOL=$($PSQL "SELECT symbol FROM properties FULL JOIN elements USING(atomic_number) WHERE name = '$1'")
  NAME=$($PSQL "SELECT name FROM properties FULL JOIN elements USING(atomic_number) WHERE name = '$1'")

  echo "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $MASS amu. $NAME has a melting point of $MELTING celsius and a boiling point of $BOILING celsius."
fi


