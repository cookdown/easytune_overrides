# IIS 7 Tuning

This tuning pack covers IIS 7, which was shipped with Server 2008.  Microsoft authors both management packs covered in the Tuning Pack.

## Tuning Levels

The following tuning levels are included in this pack,

### Discovery Only

Included with every Tuning Pack, discovery only is an excellent way to learn the scope and content of your environment without any alerts or data collection.

### Essentials

Matching the name, the essentials level is designed to give you bare-bones monitoring for your environment.  
In essence, this tuning level attempts to reduce alerts to only actionable items at the risk of missing some proactive notifications.
Example items included in the Essentials:

- Windows service stopped
- Service failed to start / load configuration

### Balanced

The balanced level is designed to provide additional monitoring and performance collection over the essential level, while still reducing unnecessary noise from the default and full tuning options.  
With the variance between deployments, the balanced level is a great candidate to start with when tuning your custom level.

### Full

Using the full level creates a comprehensive monitoring environment, with the downside of additional alerts and data collection.  
Full monitoring includes alerts for more unique and specific conditions as well as some increased monitoring and performance collection intervals.  

### Management Packs Tuned

Microsoft.Windows.InternetInformationServices.2008  
Microsoft.Windows.InternetInformationServices.CommonLibrary  
