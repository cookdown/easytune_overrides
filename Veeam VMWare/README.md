# Veeam VMWare Tuning

This Tuning Pack covers the Veeam VMWare management packs (captured with version 8.0.0.2451 of the MP).

This tuning pack was created by Shawn Williams, a member of the Technical Evangelist group from SquaredUp.  
Read more about Shawn from the SquaredUp Blog here <https://squaredup.com/blog/meet-the-tech-evangelist-group/>

## Levels

The below levels are included in this Tuning Pack. There are not (currently) any custom levels in this tuning pack

### DiscoveryOnly

Disables all rules and monitors, only discoveries are left enabled. Great when onboarding new monitoring as turning off everything but discoveries lets you phase

### MPDefault

Contains the Unix/Linux authors default tuning. Good for setting a group/object to the tuning the MP author had intended for the MP.

#### Management Packs Tuned

Veeam.Virt.Extensions.VMware.BaseDiscovery  
Veeam.Virt.Extensions.VMware.Discovery  
Veeam.Virt.Extensions.VMware.Integration  
Veeam.Virt.Extensions.VMware.Monitoring  
Veeam.Virt.Extensions.VMware.Report.DataSet  
Veeam.Virt.Extensions.VMware.vCenter.Monitoring  
Veeam.Virt.Extensions.VMware.VirtualSANAlarms  
