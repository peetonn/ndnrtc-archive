ndnrtc-archive
==============

This repo contains most recent binaries (those that currently under development) and other supporting files for NDN-RTC project

How to run NDN-RTC
---
Script `rundemo.sh` lauches included demo app binary ndnrtc-demo with NDN-RTC library libndnrtc.0.dylib and configuration file ndnrtc.cfg.

For each run, it is recommended to execute this script from a new folder (as ndnrtc-demo app will extensively write to log files and they may be overwritten):

<pre>
$ mkdir run1 && cd run1
$ ../rundemo.sh
</pre>
