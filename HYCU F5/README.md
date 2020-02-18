# HYCU F5 Big-IP Tuning
This Tuning Pack covers the HYCU F5 Big-IP management pack (captured with version 5.4.5783.0 of the MP).

This tuning pack was created by Shawn Williams, a member of the Technical Evangelist group from SquaredUp.  Read more about Shawn from the SquaredUp Blog here https://squaredup.com/blog/meet-the-tech-evangelist-group/

## Levels
The below levels are included in this Tuning Pack.

### DiscoveryOnly
Disables all rules and monitors, only discoveries are left enabled. Great when onboarding new monitoring as turning off everything but discoveries lets you phase 

### MPDefault
Contains the HYCU MP authors default tuning. Good for setting a group/object to the tuning the MP author had intended for the MP.

### Minimal
Contains tuning for the LTM pack to turn off some of the availability monitors. All other overrides are the same as the MP defaults (as we had set globally DiscoveryOnly)

#### Management Packs Tuned
Comtrade.F5.BigIp

Comtrade.F5.BigIp.ASM

Comtrade.F5.BigIp.DNS

Comtrade.F5.BigIp.LTM

