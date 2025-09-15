 #!/usr/bin/env bash
# Simple Interest Calculator

p=$1
r=$2
t=$3

if [ -z "$p" ] || [ -z "$r" ] || [ -z "$t" ]; then
  echo "Usage: $0 <principal> <rate> <time>"
  exit 1
fi

si=$(echo "$p * $r * $t" | bc -l)
echo "Simple interest = $si"
