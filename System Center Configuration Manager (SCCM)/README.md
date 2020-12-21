# System Center Service Manager (SCCM) Tuning

This Tuning Pack covers the Microsoft System Configuration Manager (aka SCCM) management pack (captured with version 5.0.8239.1010 of both the Discovery MP and Monitoring MP).

## Levels

The below levels are included in this Tuning Pack.  
There are not (currently) any custom levels in this tuning pack and is a baseline provided to kick-start your own tuning packs. If you do have a best practice tuning pack to share please reach out to us at <https://github.com/cookdown/easytune_overrides>.  

### DiscoveryOnly

Included with every Tuning Pack, discovery only is an excellent way to learn the scope and content of your environment without any alerts or data collection.

### MPDefault

As with the DiscoveryOnly level, MPDefault is included with every Tuning Pack.  
This level allows a single group to operate a the pack authors setting, while having the global/class level overrides set to another level.  
MPDefault works great with a global level of DiscoveryOnly

#### Management Packs Tuned

Microsoft.SystemCenter2012.ConfigurationManager.Discovery  
Microsoft.SystemCenter2012.ConfigurationManager.Monitoring  
