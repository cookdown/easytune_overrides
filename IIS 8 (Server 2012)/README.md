# IIS 8 Tuning
This tuning pack covers IIS 8, which was shipped with Server 2012.  Microsoft authors both management packs covered in the Tuning Pack.

## Tuning Levels

The following tuning levels are included in this pack, if you have additional tuning and updates that would fit well with this tuning we always appreciate community contributions.

### DiscoveryOnly

Included with every Tuning Pack, discovery only is an excellent way to learn the scope and content of your environment without any alerts or data collection.

### MPDefault

As with the DiscoveryOnly level, MPDefault is included with every Tuning Pack.  This level allows a single group to operate a the pack authors setting, while having the global/class level overrides set to another level.  MPDefault works great with a global level of DiscoveryOnly

### Essentials

Matching the name, the essentials level is designed to give you bare-bones monitoring for your environment.  To over-simplify things, this tuning level attempts to reduce alerts to only those actionable items at the risk of missing some proactive notifications.
Example items included in the Essentials:

- Windows service stopped
- Service failed to start / load configuration
- Website unavailable

### Balanced

The balanced level is designed to provide additional monitoring and performance collection over the essential level, while still reducing unnecessary noise from the default and full tuning options.  With the variance between deployments, the balanced level is a great candidate to start with when tuning your custom level.

### Full

Using the full level creates a comprehensive monitoring environment, with the downside of additional alerts and data collection.  Full monitoring includes alerts for more unique and specific conditions as well as some increased monitoring and performance collection intervals.

#### Management Packs Tuned

Microsoft.Windows.InternetInformationServices.2012
Microsoft.Windows.InternetInformationServices.CommonLibrary
