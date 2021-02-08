# Windows Server 2016 and 1709+ tuning

This Tuning Pack covers the Microsoft Windows Server 2016+ management packs.  
Microsoft have authored all of the management packs affected by this tuning pack.

## Tuning Levels

This tuning pack serves as an example to kick-start your own tuning packs and contains notes on the majority of the different workflows available.  
The tuning levels serve as example for how you may wish to tune your servers however there are assumptions made at each turn that need to be evaluated for your environment.  
Consult with your local subject matter experts to determine what monitoring and metrics will enable them to better monitor their systems.  

The following tuning levels are included in this Tuning Pack.  

### Discovery Only

Disables all rules and monitors, only discoveries are left enabled. Great when onboarding new monitoring as turning off everything but discoveries lets you phase in new tuning.  

### MP Default

Contains the MP authors default tuning. Good for setting a group/object to the tuning the MP author had intended for the MP.

### Test

The test level has very little monitoring for your Servers. Just enough monitoring to ensure that the server is up and reachable.  
Performance collection is pruned back to the minimum with very infrequent collection of metrics (typically 15 or 30 min intervals).  

### QA

Very similar to test but with slightly more monitoring.  
Performance collection is more normal with infrequent collection (typically 10 or 20 min intervals).  

### Production

Most monitors are enabled and performance collection at normal levels (5 or 10 min intervals).  

### Performance

**Enable this with _caution_!!!**  
Like Production in terms of monitoring however all performance collections are enabled and set to 2 minute intervals.  
This is useful when you want a more real-time view of the system or some of the more obscure metrics.  
Keep in mind that this will have a performance impact on both the monitored server and your management group, so you should not enable this on many servers at once or for any significant length of time.  

### Domain Controller

The Domain Controller level has performance metrics relevant to the operation of a Windows Domain Controller.  
This level assumes that you cannot hold the database entirely in memory in your scenario.  
If this is not the case you may wish to consider dropping a number of the disk related metrics.  

### Web Server

The Web Server level has performance metrics and monitoring thresholds relevant to the operation of Microsoft Internet Information Services or other web servers (such as Apache).  
This level tries to assume that this is a relatively busy web server, however you should look to tune relative to your environment.  

### Exchange

The Exchange level has metrics useful for all roles enabled.  
If you have dedicated servers hosting specific roles you may wish to look at more specific metrics and monitoring.  
For example a dedicated CAS server may be better served with the Web Server level and a MBX server may be better served with the Database tuning level.  

### Database

The Database level has performance metrics and tuning relevant to the operation of multiple database servers.  
All key database metrics are enabled and some of these may not be relevant to your environment.  

## Management Packs Tuned

Microsoft.Windows.Server.2016.Discovery  
Microsoft.Windows.Server.2016.Monitoring  
