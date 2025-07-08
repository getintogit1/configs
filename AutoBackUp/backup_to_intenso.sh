#!/bin/bash
#
# create a file in: 
#sudo nano /etc/systemd/system/backup-before-shutdown.service
#
#


BACKUP_SRC="$HOME"
BACKUP_DST="/media/sam/IntensoSSD/LenoMint"
LOGFILE="$BACKUP_DST/backup_$(date +%Y-%m-%d_%H-%M).log"

echo "Starte Backup von $BACKUP_SRC nach $BACKUP_DST"
echo "Log: $LOGFILE"

rsync -avh --progress \
  --exclude='node_modules/' \
  --exclude='venv/' \
  --exclude='my_env/' \
  --exclude='__pycache__/' \
  --exclude='*.log' \
  --exclude='*.lock' \
  --exclude='*.tmp' \
  --exclude='.Trash-*/' \ 
  --exclude='*.pyc' \
    --exclude='.cache' \
    --exclude='VirtualBox VMs' \
    --exclude='*.iso' \
  --exclude='.local/lib/python*/site-packages/**/errors/'
    "$BACKUP_SRC"/ "$BACKUP_DST" \
    | tee "$LOGFILE"

echo "Backup abgeschlossen!"
