# System Center Core Monitoring Tuning

This Tuning Pack covers the System Center Core Monitoring management packs (captured with version 10.19.10050.0 of the MP).

This tuning pack was written by Gavin Speed of Apajove.

## Levels

The below levels are included in this Tuning Pack.

### DiscoveryOnly

Disables all rules and monitors, only discoveries are left enabled.

### MPDefault

Contains the SC Core Monitoring MP authors default tuning. Good for setting a group/object to the tuning the MP author had intended for the MP.

### Apajove

Tuning for the health service target to expand the thresholds that can sometimes trigger health service restarts – (<https://kevinholman.com/2017/05/29/stop-healthservice-restarts-in-scom-2016/>) and tuning to change the severity to ‘info’ for a bunch of the ‘script error’ ‘failed to run script’ type alerts.

Used by Apajove in all SCOM deployments

#### Management Packs Tuned

Microsoft.SystemCenter.2007
