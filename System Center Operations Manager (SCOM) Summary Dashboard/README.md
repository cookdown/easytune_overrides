# Microsoft System Center Operations Manager (SCOM) Summary Dashboard Tuning
This Tuning Pack covers the Microsoft System Center Operations Manager (SCOM) Summary Dashboard management packs (captured with version 10.19.10050.0 of the MP).

## Levels
The below levels are included in this Tuning Pack. 

### DiscoveryOnly
Disables all rules and monitors, only discoveries are left enabled. Great when onboarding new monitoring as turning off everything but discoveries lets you phase 

### MPDefault
Contains the Unix/Linux authors default tuning. Good for setting a group/object to the tuning the MP author had intended for the MP.

### Apajove
This level contains tuning which will help will console performance in most situations, even more so in larger environments. Used in almost all SCOM implementations Apajove (www.apajove.com) are involved in. Original tips from Kevin Holman (https://kevinholman.com/2017/08/15/quicktip-disabling-workflows-to-optimize-for-large-environments/)

#### Management Packs Tuned

Microsoft.SystemCenter.OperationsManager.SummaryDashboard

