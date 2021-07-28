#!/usr/bin/env bash

LEVEL="$1"
AVAILABLE_LEVELS=("0" "1" "2" "3" "4" "5" "6" "7" "full-speed" "auto" "disengaged")

if [[ " "${AVAILABLE_LEVELS[@]}" " != *" "$LEVEL" "* ]];
then
  echo "Level (first parameter) must be one of:"
  echo "  ${AVAILABLE_LEVELS[@]}"
  exit 1
fi

echo level ${LEVEL} | sudo tee "/proc/acpi/ibm/fan"
cat /proc/acpi/ibm/fan
