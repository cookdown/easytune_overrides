# Microsoft SQL Server Tuning (version agnostic)
This Tuning Pack covers the Microsoft SQL Server Core management pack (captured with version 7.0.20.0 of the MP) this is the latest version of the SQL MPs that Microsoft have releases that is SQL version agnostic.

## Levels
The below levels are included in this Tuning Pack.

### DiscoveryOnly
Disables all rules and monitors, only discoveries are left enabled. Great when onboarding new monitoring as turning off everything but discoveries lets you phase 

### MPDefault
Contains the HYCU MP authors default tuning. Good for setting a group/object to the tuning the MP author had intended for the MP.

### Balanced
Just enough monitoring to know what is happening in a production environment (without starting to impact the servers performance)

### Monitor_High
Active monitoring. Workflows containing detailed metrics included in this level. Could impact server performance with this much monitoring. Used for monitoring SCOMs SQL servers at Purdue.

#### Management Packs Tuned
Microsoft.SQLServer.Core.Library

Microsoft.SQLServer.Windows.Discovery

Microsoft.SQLServer.Windows.Monitoring
