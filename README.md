Aggregated Log File Exploder
============================

This tool will take an application log directory and explode any YARN application aggregated log files
into their original separate log files.

This is useful if you want to do any additional parsing on the aggregated log files of a YARN application
with tools that work better with plain text.

It also supports [HAR archived aggregated logs](http://hadoop.apache.org/docs/current/hadoop-archive-logs/HadoopArchiveLogs.html).

Build
-----
````
./build.sh [-Dhadoop.version=<version>] [passthrough-maven-opts]
````

The ``hadoop.version`` can be any Hadoop version (CDH or Apache).  It defaults to CDH 5.9.0.

While a specific version is required for compiling, it should be able to process aggregated log files created by any version of Hadoop.

Run
---
````
./run.sh -applogdir <arg> -outputdir <arg>
````

The ````applogdir```` should point to the Application's Aggregated Log directory. For example, that is typically something like this:
 ````hdfs://<host>:<port>/tmp/logs/<user>/logs/<application_id>/````.  This directory should either contain one or more "plain"
 Aggregated Log files (named ````<nodemanager-hostname>_<nm_port>````) or a single HAR file (named ````<application_id>.har````).
 The tool can handle either format, so simply always point it at the parent directory, and not at any individual Aggregated Log or
 HAR file.  See Examples 1 and 2.

The ````appplogdir```` and ````outputdir```` can be on any FileSystem that implements the Hadoop FileSystem class, as long as the
necessary jars, and possibly configuration, are available on the classpath.

Example Usage
-------------
It's recommended to follow Examples 1 and 2, which simply point the tool at an Aggregated Log directory.  This will work for both
"plain" Aggregated Log files as well as HAR files.  
Only follow Examples 3 and 4 if you have a specific reason to and know what you're doing.
<br/>

**Example 1:** Using an Application's Aggregated Log directory, from the local disk
````
$ ./run.sh -applogdir ~/Downloads/application_1473425415287_0008 -outputdir /tmp/agg
````
<br/>

**Example 2:** Using an Application's Aggregated Log directory, from HDFS (````hdfs://rkanter-z-1.gce.cloudera.com:8020````)
````
$ ./run.sh -applogdir hdfs://rkanter-z-1.gce.cloudera.com:8020/tmp/logs/systest/logs/application_1473425415287_0008 -outputdir /tmp/agg
````
<br/>

**Example 3:** (NOT RECOMMENDED) Using HAR directly, from the local disk
````
$ ./run.sh -applogdir har:///tmp/logs/systest/logs/application_1473425415287_0008/application_1473425415287_0008.har -outputdir /tmp/agg
````
<br/>

**Example 4:** (NOT RECOMMENDED) Using HAR directly, from HDFS (````hdfs://rkanter-z-1.gce.cloudera.com:8020````)
````
$ ./run.sh -applogdir har://hdfs-rkanter-z-1.gce.cloudera.com:8020/tmp/logs/systest/logs/application_1473425415287_0008/application_1473425415287_0008.har -outputdir /tmp/agg
````

Example Output
-------------
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
