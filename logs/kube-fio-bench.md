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
        Random:             36,281 / 833
    Sequential:             39,781 / 864

Bandwidth in KiB/sec (Read/Write)
        Random:      1,198,067 / 102,760
    Sequential:      1,092,901 / 108,948


Latency in ns (Read/Write)
        Random:      125,716 / 5,845,466
    Sequential:       58,475 / 5,566,372
```

### ceph-filesystem (Samsung SSD 990 PRO 1TB)
```
=========================
FIO Benchmark Summary
For: test_device
CPU Idleness Profiling: disabled
Size: 30G
Quick Mode: disabled
=========================
IOPS (Read/Write)
        Random:             41,713 / 852
    Sequential:             42,466 / 861

Bandwidth in KiB/sec (Read/Write)
        Random:      1,263,214 / 104,511
    Sequential:      1,143,987 / 107,434


Latency in ns (Read/Write)
        Random:      113,135 / 5,958,694
    Sequential:       56,818 / 5,546,764
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
