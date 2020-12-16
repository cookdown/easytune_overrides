# Microsoft Universal Linux (2019 UR2)
This Tuning Pack covers the Microsoft Universal Linux Management Pack captured with version 10.19.1123.0.

The Universal Linux Management pack brings in support for the following Operating Systems:
>Debian 8,9
>Ubuntu 16.04, 18.04
>CentOS 6, 7, 8
>Oracle Linux 6, 7

## Levels
Linux is an incredibly versatile and customisable operating system that can be deployed out in many different roles.  Because of the different ways organizations manage and configure Linux Servers, there are an infinite number of ways to perform monitoring.  We approached monitoring by keeping to the basics, with varying levels of performance monitoring depending on how closely you are likely to want to monitor your systems.

The following levels are included in this Tuning Pack:

### Test
This level is running with very infrequent performance collections; 15 minute intervals.

### QA
This level is is running with infrequent performance collections; 10 minute intervals.

### Production
This level runs with standard performance collections; 5 minute intervals.

### Performance Monitoring
**Enable this with _caution_!!!**  This is similar to the Production tuning level, but all of the performance collections are set to the 2 minute interval.  This is handy when you want more of a real-time view of the system.  Keep in mind that running this profile on more than a few Linux Servers could have a performance impact for both the Linux Server being monitored and your SCOM landscape.

#### Management Packs Tuned
Microsoft.Linux.Universal.Monitoring
Microsoft.Linux.UniversalD.1
Microsoft.Linux.UniversalR.1
