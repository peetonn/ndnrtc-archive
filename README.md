ndnrtc-archive
==============

This repo contains most recent binaries - NDN-RTC library and demo app (**MacOS only!**) (those that currently under development) and other supporting files for [NDN-RTC project](https://github.com/remap/ndnrtc).

How to run NDN-RTC
---
Script `rundemo.sh` lauches included demo app binary ndnrtc-demo with NDN-RTC library libndnrtc.0.dylib and configuration file ndnrtc.cfg.

For each run, it is recommended to execute this script from a new folder (as ndnrtc-demo app will extensively write to log files and they may be overwritten):

<pre>
$ mkdir run1 && cd run1
$ ../rundemo.sh
</pre>

NDNComm 2014
---
The configuration file is ready for NDNComm 2014 Live NDN-RTC producer. In order to fetch live stream for NDNComm 2014 run the app as explained above, press 3 (fetch stream) and chose these prefix and username in demo app:

* username = **ndncomm**
* prefix = **/ndn/edu/uci** (is set to be the default)

> Make sure that your local NFD is connected to the testbed!