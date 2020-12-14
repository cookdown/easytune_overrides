# SQL Server Version-Agnostic Management Pack Tuning Pack Guide

This Tuning Pack covers the Microsoft System Center Management Pack for SQL Server captured with version agnostic 7.0.15.0 of the Management Pack.

Taken from the details section of the download page available here <https://www.microsoft.com/en-us/download/details.aspx?id=56203>, this pack provides the following capabilities:

>Microsoft System Center Management Pack for SQL Server enables the discovery and monitoring of SQL Server 2012, 2014, 2016, 2017, 2019, and newer: Database Engines, Databases and other related components. It is designed to run by Operations Manager 2012 R2, Operations Manager 2016, Operations Manager 1801/1807, and Operations Manager 2019.
>This version-agnostic management pack was thoroughly built from the ground up in accordance with Best Practices for SQL Server; it is intended to monitor SQL Server 2012—2019 and all upcoming SQL Server versions.
>The monitoring provided by the management pack includes performance, availability, and configuration monitoring, as well as performance and events data collection. All monitoring workflows have predefined thresholds and complimentary knowledge base articles. You can integrate the monitoring of SQL Server components into your service-oriented monitoring scenarios.
>In addition to health monitoring capabilities, this management pack includes dashboards, diagram views, state views, performance views, alert views and diagnostic tasks that enable near real-time diagnostics and remediation of detected issues.

This tuning pack was created by Shawn Williams, a member of the Technical Evangelist group from SquaredUp.  
Read more about Shawn from the SquaredUp Blog here <https://squaredup.com/blog/meet-the-tech-evangelist-group/>.

## Levels

Microsoft SQL Server is a relational database management system (RDBMS) that is used to support a wide variety of transaction processing, business intelligence and analytics applications in many organizations.  Because of the different ways organizations manage and configure SQL Server, there are an infinite number of ways to perform monitoring.   For my particular use-cases, I approached monitoring by keeping to the basics, with varying levels of performance monitoring.

The following levels are included in this Tuning Pack:

### Test

This level presents a very minimal level of monitoring for Test SQL Servers.  Just enough monitoring to make sure that the database is running with very infrequent performance collections; 15 minute intervals.

### QA

This level is very similar to Test, but it increases the level of performance metric collection; 10 minute intervals.

### Production

This level has most of the monitors turned on and the performance collections are tuned to the 5 minute interval.

### Performance Monitoring

**Enable this with _caution_!!!**  This is similar to the Production tuning level, but all of the performance collections are set to the 2 minute interval.  
This is handy when you want more of a real-time view of the system.  
Keep in mind that running this profile on more than a few SQL Servers could have a performance impact for both the SQL Server being monitored and your SCOM landscape.

#### Management Packs Tuned

Microsoft.SQLServer.Core.Library  
Microsoft.SQLServer.Windows.Discovery  
Microsoft.SQLServer.Windows.Monitoring  
