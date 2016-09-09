Aggregated Log File Exploder
============================

This tool will takes an application log directory and explode any YARN application aggregated log files
into their original separate log files.

This is useful if you want to do any additional parsing on the aggregated log files of a YARN application
with tools that work better with plain text.

It also supports [HAR archived aggregated logs](http://hadoop.apache.org/docs/current/hadoop-archive-logs/HadoopArchiveLogs.html).

Build
-----
````
./build.sh [-Dhadoop.version=<version>]
````

The ``hadoop.version`` can be any Hadoop version (CDH or Apache).  It defaults to the latest released version of CDH.

While that's required for compiling, it should run against aggregated log files created by any version of Hadoop.

Run
---
````
./run.sh -applogdir <arg> -outputdir <arg>
```

The appplogdir and outputdir can be on any FileSystem that implements the Hadoop FileSystem class, as long as the necessary
configuration is available on the classpath.


Sample Output
=============
````
$ ./run.sh -applogdir ~/Downloads/application_1473425415287_0008 -outputdir /tmp/agg
/Users/rkanter/Downloads/application_1473425415287_0008/rkanter-z-1.gce.cloudera.com_8041
    --> /tmp/agg/container_1473425415287_0008_01_000001
        - stderr
        - stdout
        - syslog
    --> /tmp/agg/container_1473425415287_0008_01_000004
        - stderr
        - stdout
        - syslog
    --> /tmp/agg/container_1473425415287_0008_01_000008
        - stderr
        - stdout
        - syslog
        - syslog.shuffle
/Users/rkanter/Downloads/application_1473425415287_0008/rkanter-z-2.gce.cloudera.com_8041
    --> /tmp/agg/container_1473425415287_0008_01_000002
        - stderr
        - stdout
        - syslog
    --> /tmp/agg/container_1473425415287_0008_01_000006
        - stderr
        - stdout
        - syslog
/Users/rkanter/Downloads/application_1473425415287_0008/rkanter-z-3.gce.cloudera.com_8041
    --> /tmp/agg/container_1473425415287_0008_01_000003
        - stderr
        - stdout
        - syslog
    --> /tmp/agg/container_1473425415287_0008_01_000005
        - stderr
        - stdout
        - syslog
    --> /tmp/agg/container_1473425415287_0008_01_000007
        - stderr
        - stdout
        - syslog
````
