#!/bin/bash
while IFS= read -r line; do
  $line
done < nada
