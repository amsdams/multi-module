# compare j8 vs j23

## ps

```shell
USER   PID  %CPU %MEM      VSZ    RSS   TT  STAT STARTED      TIME COMMAND
jula 18346   0.1  0.3 423012576 115040 s013  S+   10:58AM   0:04.64 java -jar application/target/application-0.0.8-SNAPSHOT.jar
jula 18179   0.0  0.2 422927936  84992 s011  S+   10:58AM   0:03.69 java -jar application/target/application-0.0.23-SNAPSHOT.jar

```

## jmap
```shell
jmap -histo 18346 | head

 num     #instances         #bytes  class name
----------------------------------------------
   1:          5386       19101632  [I
   2:         47692        5515648  [C
   3:         43141        1035384  java.lang.String
   4:         10953         963864  java.lang.reflect.Method
   5:          3808         930072  [B
   6:          7155         844792  java.lang.Class
   7:         21216         678912  java.util.concurrent.ConcurrentHashMap$Node
```

```shell
jmap -clstats 18346 | tail -3
Total = 39                                                    7146  37284864  34516696  
ChunkSz: Total size of all allocated metaspace chunks
BlockSz: Total size of all allocated metaspace blocks (each chunk has several blocks)
```
```shell

jmap -histo 18179 | head
 num     #instances         #bytes  class name (module)
-------------------------------------------------------
   1:        198215       23193168  [B (java.base@23.0.1)
   2:           199        5623328  [Ljdk.internal.vm.FillerElement; (java.base@23.0.1)
   3:        172470        4139280  java.lang.String (java.base@23.0.1)
   4:         25370        1623680  java.net.URL (java.base@23.0.1)
   5:         26153        1341296  [Ljava.lang.Object; (java.base@23.0.1)
   6:         12306        1082928  java.lang.reflect.Method (java.base@23.0.1)
   7:          8582        1019624  java.lang.Class (java.base@23.0.1)
   8:         16700        1012680  [I (java.base@23.0.1)
```
```shell

jmap -clstats 18179 | tail -3
Total = 4                                                     8493  35088384  33529248  
ChunkSz: Total size of all allocated metaspace chunks
BlockSz: Total size of all allocated metaspace blocks (each chunk has several blocks)
```
## scale-up.sh

```shell

jps
35715 application-0.0.23-SNAPSHOT.jar
8644 Main
35656 application-0.0.23-SNAPSHOT.jar
35785 application-0.0.23-SNAPSHOT.jar
35593 application-0.0.23-SNAPSHOT.jar
35595 application-0.0.23-SNAPSHOT.jar
35917 application-0.0.23-SNAPSHOT.jar
35853 application-0.0.23-SNAPSHOT.jar
35597 application-0.0.23-SNAPSHOT.jar
35726 application-0.0.23-SNAPSHOT.jar
35599 application-0.0.23-SNAPSHOT.jar
35601 application-0.0.23-SNAPSHOT.jar
35666 application-0.0.23-SNAPSHOT.jar
35603 application-0.0.23-SNAPSHOT.jar
35607 application-0.0.23-SNAPSHOT.jar
35735 application-0.0.23-SNAPSHOT.jar
35609 application-0.0.23-SNAPSHOT.jar
37593 Jps
35866 application-0.0.23-SNAPSHOT.jar
35611 application-0.0.23-SNAPSHOT.jar
35675 application-0.0.23-SNAPSHOT.jar
35613 application-0.0.23-SNAPSHOT.jar
35615 application-0.0.23-SNAPSHOT.jar
35617 application-0.0.23-SNAPSHOT.jar
35619 application-0.0.23-SNAPSHOT.jar
35811 application-0.0.23-SNAPSHOT.jar
35621 application-0.0.23-SNAPSHOT.jar
35686 application-0.0.23-SNAPSHOT.jar
35623 application-0.0.23-SNAPSHOT.jar
35753 application-0.0.23-SNAPSHOT.jar
35625 application-0.0.23-SNAPSHOT.jar
35627 application-0.0.23-SNAPSHOT.jar
35629 application-0.0.23-SNAPSHOT.jar
35695 application-0.0.23-SNAPSHOT.jar
35631 application-0.0.23-SNAPSHOT.jar
35888 application-0.0.23-SNAPSHOT.jar
35633 application-0.0.23-SNAPSHOT.jar
35635 application-0.0.23-SNAPSHOT.jar
35640 application-0.0.23-SNAPSHOT.jar
35707 application-0.0.23-SNAPSHOT.jar
35837 application-0.0.23-SNAPSHOT.jar
```
```shell
jps
37827 application-0.0.8-SNAPSHOT.jar
8644 Main
37958 application-0.0.8-SNAPSHOT.jar
37895 application-0.0.8-SNAPSHOT.jar
37839 application-0.0.8-SNAPSHOT.jar
37776 application-0.0.8-SNAPSHOT.jar
37778 application-0.0.8-SNAPSHOT.jar
37843 application-0.0.8-SNAPSHOT.jar
37971 application-0.0.8-SNAPSHOT.jar
39636 Jps
37780 application-0.0.8-SNAPSHOT.jar
37908 application-0.0.8-SNAPSHOT.jar
37782 application-0.0.8-SNAPSHOT.jar
37784 application-0.0.8-SNAPSHOT.jar
37786 application-0.0.8-SNAPSHOT.jar
37851 application-0.0.8-SNAPSHOT.jar
37790 application-0.0.8-SNAPSHOT.jar
37792 application-0.0.8-SNAPSHOT.jar
37794 application-0.0.8-SNAPSHOT.jar
37987 application-0.0.8-SNAPSHOT.jar
37796 application-0.0.8-SNAPSHOT.jar
37861 application-0.0.8-SNAPSHOT.jar
37798 application-0.0.8-SNAPSHOT.jar
37927 application-0.0.8-SNAPSHOT.jar
37800 application-0.0.8-SNAPSHOT.jar
37994 application-0.0.8-SNAPSHOT.jar
37802 application-0.0.8-SNAPSHOT.jar
37867 application-0.0.8-SNAPSHOT.jar
37804 application-0.0.8-SNAPSHOT.jar
37806 application-0.0.8-SNAPSHOT.jar
37808 application-0.0.8-SNAPSHOT.jar
37937 application-0.0.8-SNAPSHOT.jar
37810 application-0.0.8-SNAPSHOT.jar
37875 application-0.0.8-SNAPSHOT.jar
37812 application-0.0.8-SNAPSHOT.jar
37814 application-0.0.8-SNAPSHOT.jar
37816 application-0.0.8-SNAPSHOT.jar
37818 application-0.0.8-SNAPSHOT.jar
37820 application-0.0.8-SNAPSHOT.jar
37949 application-0.0.8-SNAPSHOT.jar
37823 application-0.0.8-SNAPSHOT.jar
```
## ab
```shell
ab -n 2000 -c 4 http://localhost:8008/
This is ApacheBench, Version 2.3 <$Revision: 1913912 $>
Copyright 1996 Adam Twiss, Zeus Technology Ltd, http://www.zeustech.net/
Licensed to The Apache Software Foundation, http://www.apache.org/

Benchmarking localhost (be patient)
Completed 200 requests
Completed 400 requests
Completed 600 requests
Completed 800 requests
Completed 1000 requests
Completed 1200 requests
Completed 1400 requests
Completed 1600 requests
Completed 1800 requests
Completed 2000 requests
Finished 2000 requests


Server Software:        
Server Hostname:        localhost
Server Port:            8008

Document Path:          /
Document Length:        12 bytes

Concurrency Level:      4
Time taken for tests:   0.145 seconds
Complete requests:      2000
Failed requests:        0
Total transferred:      290000 bytes
HTML transferred:       24000 bytes
Requests per second:    13797.39 [#/sec] (mean)
Time per request:       0.290 [ms] (mean)
Time per request:       0.072 [ms] (mean, across all concurrent requests)
Transfer rate:          1953.73 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    0   0.0      0       0
Processing:     0    0   0.3      0       4
Waiting:        0    0   0.3      0       4
Total:          0    0   0.3      0       4

Percentage of the requests served within a certain time (ms)
  50%      0
  66%      0
  75%      0
  80%      0
  90%      0
  95%      0
  98%      1
  99%      2
 100%      4 (longest request)
```
```shell
 ab -n 2000 -c 4 http://localhost:8023/
This is ApacheBench, Version 2.3 <$Revision: 1913912 $>
Copyright 1996 Adam Twiss, Zeus Technology Ltd, http://www.zeustech.net/
Licensed to The Apache Software Foundation, http://www.apache.org/

Benchmarking localhost (be patient)
Completed 200 requests
Completed 400 requests
Completed 600 requests
Completed 800 requests
Completed 1000 requests
Completed 1200 requests
Completed 1400 requests
Completed 1600 requests
Completed 1800 requests
Completed 2000 requests
Finished 2000 requests


Server Software:        
Server Hostname:        localhost
Server Port:            8023

Document Path:          /
Document Length:        12 bytes

Concurrency Level:      4
Time taken for tests:   0.116 seconds
Complete requests:      2000
Failed requests:        0
Total transferred:      290000 bytes
HTML transferred:       24000 bytes
Requests per second:    17178.88 [#/sec] (mean)
Time per request:       0.233 [ms] (mean)
Time per request:       0.058 [ms] (mean, across all concurrent requests)
Transfer rate:          2432.56 [Kbytes/sec] received

Connection Times (ms)
              min  mean[+/-sd] median   max
Connect:        0    0   0.0      0       1
Processing:     0    0   0.2      0       4
Waiting:        0    0   0.1      0       3
Total:          0    0   0.2      0       4

Percentage of the requests served within a certain time (ms)
  50%      0
  66%      0
  75%      0
  80%      0
  90%      0
  95%      0
  98%      1
  99%      1
 100%      4 (longest request)
```

