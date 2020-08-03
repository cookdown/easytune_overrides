# SQL Managed Instance

This tuning pack covers Azure SQL Managed instance version 7.0.22.0 shipped in 2020. Microsoft authors all of the management pack covered in the Tuning Pack.
See the corresponding Cookdown blog article at: https://t.co/FRelXILV2V?amp=1

## Tuning Levels

The following levels are included in this Tuning Pack and developed in the same style as the SQL agnostic Tuning Pack.

### Discovery Only

Included with every Tuning Pack, discovery only is an excellent way to learn the scope and content of your environment without any alerts or data collection.

### Test

This level presents a very minimal level of monitoring for Test SQL managed instances.  Just enough monitoring to make sure that the instance and databases are running with very infrequent performance collections; 15 minute intervals.

### QA

This level is very similar to Test, but it increases the level of performance metric collection; 10 minute intervals.

### Production

This level has most of the monitors turned on and the performance collections are tuned to the normal 5 minute interval.

### Performance Monitoring

**Enable this with _caution_!!!**  This is similar to the Production tuning level, but all of the performance collections are set to a 2 minute interval.  This is handy when you want more of a real-time view of the system.  Keep in mind that running this profile on more than a few SQL managed instances could have a performance impact for both the managed instance being monitored and your SCOM landscape.

### Management Packs Tuned

Microsoft.Azure.ManagedInstance.Discovery  
Microsoft.Azure.ManagedInstance.Monitoring  
Microsoft.Azure.ManagedInstance.Views  
