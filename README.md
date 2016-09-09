Aggregated Log File Exploder
============================

This tool will takes an application log directory and explode any YARN application aggregated log files
into their original separate log files.

This is useful if you want to do any additional parsing on the aggregated log files of a YARN application
with tools that work better with plain text.

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
$ ./run.sh -applogdir ~/Downloads/diagnostics_agg/job_1422655762637_0002/aggregated_logs/application_1422655762637_0002 -outputdir /tmp/agg
/Users/rkanter/Downloads/diagnostics/job_1422655762637_0002/aggregated_logs/application_1422655762637_0002/rkanter-z-1.ent.cloudera.com_8041
	--> /tmp/agg/container_1422655762637_0002_01_000013/stderr
	--> /tmp/agg/container_1422655762637_0002_01_000013/stdout
	--> /tmp/agg/container_1422655762637_0002_01_000013/syslog
/Users/rkanter/Downloads/diagnostics/job_1422655762637_0002/aggregated_logs/application_1422655762637_0002/rkanter-z-2.ent.cloudera.com_8041
	--> /tmp/agg/container_1422655762637_0002_01_000035/stderr
	--> /tmp/agg/container_1422655762637_0002_01_000035/stdout
	--> /tmp/agg/container_1422655762637_0002_01_000035/syslog
/Users/rkanter/Downloads/diagnostics/job_1422655762637_0002/aggregated_logs/application_1422655762637_0002/rkanter-z-3.ent.cloudera.com_8041
	--> /tmp/agg/container_1422655762637_0002_01_000020/stderr
	--> /tmp/agg/container_1422655762637_0002_01_000020/stdout
	--> /tmp/agg/container_1422655762637_0002_01_000020/syslog
...
````
