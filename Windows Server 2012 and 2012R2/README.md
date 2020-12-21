# Windows Server 2012 and 2012R2 Tuning

This Tuning Pack covers the Microsoft Windows Server 2012 management packs.  
Microsoft have authored all of the management packs affected by this tuning pack.

## Tuning Levels

The following tuning levels are included in this Tuning Pack.  
There are not (currently) any custom levels in this tuning pack and is a baseline provided to kick-start your own tuning packs. If you do have a best practice tuning pack to share please reach out to us at <https://github.com/cookdown/easytune_overrides>.  

### Discovery Only

Disables all rules and monitors, only discoveries are left enabled. Great when onboarding new monitoring as turning off everything but discoveries lets you phase in new tuning.  

### MP Default

Contains the MP authors default tuning. Good for setting a group/object to the tuning the MP author had intended for the MP.

## Management Packs Tuned

Microsoft.Windows.Server.2012.Discovery  
Microsoft.Windows.Server.2012.Monitoring  
Microsoft.Windows.Server.2012.R2.Discovery  
Microsoft.Windows.Server.2012.R2.Monitoring  
