### local-hostpath (CT500MX500SSD1)
```
=========================
FIO Benchmark Summary
For: test_device
CPU Idleness Profiling: disabled
Size: 30G
Quick Mode: disabled
=========================
IOPS (Read/Write)
        Random:          90,546 / 73,514
    Sequential:          94,976 / 68,510

Bandwidth in KiB/sec (Read/Write)
        Random:        438,403 / 315,218
    Sequential:        459,349 / 349,123


Latency in ns (Read/Write)
        Random:         160,387 / 65,962
    Sequential:         166,476 / 68,810
```

### ceph-block (Samsung SSD 990 PRO 1TB)
```
=========================
FIO Benchmark Summary
For: test_device
CPU Idleness Profiling: disabled
Size: 30G
Quick Mode: disabled
=========================
IOPS (Read/Write)
        Random:             35,205 / 765
    Sequential:             39,286 / 867

Bandwidth in KiB/sec (Read/Write)
        Random:       1,117,899 / 95,300
    Sequential:      1,178,934 / 107,599


Latency in ns (Read/Write)
        Random:      120,223 / 6,361,935
    Sequential:       54,457 / 5,398,745
```

### ceph-filesystem (Lexar SSD NM7A1 1TB)
```
=========================
FIO Benchmark Summary
For: test_device
CPU Idleness Profiling: disabled
Size: 30G
Quick Mode: disabled
=========================
IOPS (Read/Write)
        Random:             36,414 / 342
    Sequential:             30,024 / 350

Bandwidth in KiB/sec (Read/Write)
        Random:       1,166,884 / 36,183
    Sequential:       1,103,324 / 41,126


Latency in ns (Read/Write)
        Random:      167,982 / 8,291,015
    Sequential:       75,013 / 7,660,091
```

### nfs-slow / virtual-nas.internal (raidz2 8x Seagate IronWolf 12 TB)
```
=========================
FIO Benchmark Summary
For: test_device
CPU Idleness Profiling: disabled
Size: 30G
Quick Mode: disabled
=========================
IOPS (Read/Write)
        Random:                 406 / 62
    Sequential:             23,240 / 345

Bandwidth in KiB/sec (Read/Write)
        Random:          50,358 / 14,129
    Sequential:         106,894 / 14,664


Latency in ns (Read/Write)
        Random:  23,980,529 / 56,243,355
    Sequential:     501,169 / 62,328,673
```
