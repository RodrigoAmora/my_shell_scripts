#!/bin/bash
# monitor.sh - Mostra uso da CPU e memória a cada 5s

while true; do
  echo "===== $(date) ====="
  echo "Uso de CPU:"
  mpstat 1 1 | grep "all"
  echo "Uso de memória:"
  free -h
  sleep 5
done

