Compacted and Aggregated Log File Exploder
==========================================

This tool will takes an application log directory and explode any YARN application aggregated and compacted aggregated log files
into their original separate log files.

This is useful if you want to do any additional parsing on the aggregated and compacted aggregated log files of a YARN application
with tools that work better with plain text.

Build
-----
````
./build.sh [-Dhadoop.version=<version>]
````

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
/Users/rkanter/Downloads/diagnostics/job_1422655762637_0002/aggregated_logs/application_1422655762637_0002/application_1422655762637_0002
	--> /tmp/agg/container_1422655762637_0002_01_000022/stderr
	--> /tmp/agg/container_1422655762637_0002_01_000022/stdout
	--> /tmp/agg/container_1422655762637_0002_01_000022/syslog
	--> /tmp/agg/container_1422655762637_0002_01_000010/stderr
	--> /tmp/agg/container_1422655762637_0002_01_000010/stdout
	--> /tmp/agg/container_1422655762637_0002_01_000010/syslog
	--> /tmp/agg/container_1422655762637_0002_01_000023/stderr
	--> /tmp/agg/container_1422655762637_0002_01_000023/stdout
	--> /tmp/agg/container_1422655762637_0002_01_000023/syslog
	--> /tmp/agg/container_1422655762637_0002_01_000011/stderr
	--> /tmp/agg/container_1422655762637_0002_01_000011/stdout
	--> /tmp/agg/container_1422655762637_0002_01_000011/syslog
	--> /tmp/agg/container_1422655762637_0002_01_000021/stderr
	--> /tmp/agg/container_1422655762637_0002_01_000021/stdout
	--> /tmp/agg/container_1422655762637_0002_01_000021/syslog
	--> /tmp/agg/container_1422655762637_0002_01_000012/stderr
	--> /tmp/agg/container_1422655762637_0002_01_000012/stdout
	--> /tmp/agg/container_1422655762637_0002_01_000012/syslog
	--> /tmp/agg/container_1422655762637_0002_01_000031/stderr
	--> /tmp/agg/container_1422655762637_0002_01_000031/stdout
	--> /tmp/agg/container_1422655762637_0002_01_000031/syslog
	--> /tmp/agg/container_1422655762637_0002_01_000034/stderr
	--> /tmp/agg/container_1422655762637_0002_01_000034/stdout
	--> /tmp/agg/container_1422655762637_0002_01_000034/syslog
	--> /tmp/agg/container_1422655762637_0002_01_000036/stderr
	--> /tmp/agg/container_1422655762637_0002_01_000036/stdout
	--> /tmp/agg/container_1422655762637_0002_01_000036/syslog
	--> /tmp/agg/container_1422655762637_0002_01_000039/stderr
	--> /tmp/agg/container_1422655762637_0002_01_000039/stdout
	--> /tmp/agg/container_1422655762637_0002_01_000039/syslog
	--> /tmp/agg/container_1422655762637_0002_01_000027/stderr
	--> /tmp/agg/container_1422655762637_0002_01_000027/stdout
	--> /tmp/agg/container_1422655762637_0002_01_000027/syslog
	--> /tmp/agg/container_1422655762637_0002_01_000024/stderr
	--> /tmp/agg/container_1422655762637_0002_01_000024/stdout
	--> /tmp/agg/container_1422655762637_0002_01_000024/syslog
	--> /tmp/agg/container_1422655762637_0002_01_000015/stderr
	--> /tmp/agg/container_1422655762637_0002_01_000015/stdout
	--> /tmp/agg/container_1422655762637_0002_01_000015/syslog
	--> /tmp/agg/container_1422655762637_0002_01_000003/stderr
	--> /tmp/agg/container_1422655762637_0002_01_000003/stdout
	--> /tmp/agg/container_1422655762637_0002_01_000003/syslog
	--> /tmp/agg/container_1422655762637_0002_01_000002/stderr
	--> /tmp/agg/container_1422655762637_0002_01_000002/stdout
	--> /tmp/agg/container_1422655762637_0002_01_000002/syslog
	--> /tmp/agg/container_1422655762637_0002_01_000005/stderr
	--> /tmp/agg/container_1422655762637_0002_01_000005/stdout
	--> /tmp/agg/container_1422655762637_0002_01_000005/syslog
	--> /tmp/agg/container_1422655762637_0002_01_000004/stderr
	--> /tmp/agg/container_1422655762637_0002_01_000004/stdout
	--> /tmp/agg/container_1422655762637_0002_01_000004/syslog
	--> /tmp/agg/container_1422655762637_0002_01_000007/stderr
	--> /tmp/agg/container_1422655762637_0002_01_000007/stdout
	--> /tmp/agg/container_1422655762637_0002_01_000007/syslog
	--> /tmp/agg/container_1422655762637_0002_01_000006/stderr
	--> /tmp/agg/container_1422655762637_0002_01_000006/stdout
	--> /tmp/agg/container_1422655762637_0002_01_000006/syslog
	--> /tmp/agg/container_1422655762637_0002_01_000001/stderr
	--> /tmp/agg/container_1422655762637_0002_01_000001/stdout
	--> /tmp/agg/container_1422655762637_0002_01_000001/syslog

...
````
