## Find Disks
```
lsblk -o name,model,serial
```

## Start Test
```
sudo screen -S "1389UA1" -dm ./disk-burnin.sh -f sdq
```
