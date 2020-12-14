# System Center Service Manager (SCSM) Tuning

This Tuning Pack covers the Microsoft System Center Service Manager (aka SCSM) management pack (captured with version 7.7.16.0 of both the Discovery MP and Monitoring MP).

This tuning pack was created by Shawn Williams, a member of the Technical Evangelist group from SquaredUp.  Read more about Shawn from the SquaredUp Blog here <https://squaredup.com/blog/meet-the-tech-evangelist-group/>

## Levels

The below levels are included in this Tuning Pack. There are not (currently) any custom levels in this tuning pack.

### DiscoveryOnly

Disables all rules and monitors, only discoveries are left enabled. Great when onboarding new monitoring as turning off everything but discoveries lets you phase

### MPDefault

Contains the SCSM MP authors default tuning. Good for setting a group/object to the tuning the MP author had intended for the MP.

#### Management Packs Tuned

Microsoft.SystemCenter.ServiceManager.Discovery
Microsoft.SystemCenter.ServiceManager.Monitoring
