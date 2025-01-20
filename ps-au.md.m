
USER   PID  %CPU %MEM      VSZ    RSS   TT  STAT STARTED      TIME COMMAND
jula 18346   0.1  0.3 423012576 115040 s013  S+   10:58AM   0:04.64 java -jar application/target/application-0.0.8-SNAPSHOT.jar
jula 18179   0.0  0.2 422927936  84992 s011  S+   10:58AM   0:03.69 java -jar application/target/application-0.0.23-SNAPSHOT.jar

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
