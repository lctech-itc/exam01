#!/bin/bash
# DO NOT MODIFY THIS FILE ("Check My Solution" will fail)

found=0

# shellcheck disable=SC2034
for i in {1..4}
do
  res=$(curl -s localhost:5000)
  ex=$?
  if test "$ex" != "0"; then
     echo -n "NO"
     exit
  fi

  res2=$(echo "$res"|grep -s nginx_0)
  ex=$?
  if test "$ex" != "0"; then
     continue
  else
    found=1
    break
  fi
done

if test "$found" != "1"; then
   echo -n "NO"
   exit
fi

# shellcheck disable=SC2034
for j in {1..4}
do
  res=$(curl -s localhost:5000)
  ex=$?
  if test "$ex" != "0"; then
     echo -n "NO"
     exit
  fi

  res2=$(echo "$res"|grep -s nginx_1)
  ex=$?
  if test "$ex" != "0"; then
     continue
  else
    echo -n "OK"
    exit
  fi
done

echo -n "NO"