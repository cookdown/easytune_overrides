# Active Directory 2016 Tuning

This Tuning Pack covers the Microsoft System Center Management Pack for Active Directory Directory Services (captured with version 10.0.2.2 of the Management Pack). The tuning pack offers pre-defined monitornig levels for Windows Server 2016 and newer based Active Directory domain controllers.

This tuning pack was written by Stoyan Chalakov of POHN IT-Consulting GmbH. Stoyan is an MVP in Microsoft Cloud and Datacenter. Read more from Stoyan here https://www.pohn.ch/blog/

## Levels

 Active Directory serves as foundation for almost any IT environment and offers key services like user and computer authentication, authorization and management. Because of this, the Essential level, defined within this Tuning Pack might contain a broader set of discovered and monitored components, compared to other Tuning Packs. This also has an impact on how the levels are structured - the Essential monitoring level serves as a base for each of the levels that follow.
 An additional management pack is also included in the Tuning Pack - Microsoft.Windows.Server.AD.DomainMemberMonitoring. It offers different availability and performance data from the perspective of a domain member.

The following levels are included in this Tuning Pack:

### Essential

This level presents a necessary minimum regarding the monitoring of Active Directory Directory Services in organizations of any scale.
All important Discoveries (Active Directory Topology, Domain Controller) are enabled. This level includes also critical Consistency, Availability and Health
monitors, related to fundamental Active Directory roles and functionalities, like the FSMO roles, Global Catalogs, the Active Directory Replication, SYSVOL, Trusts, LDAP Binds as well as essential services (KDC, Netlogon, DCLocator, etc.). In addition to this the rules, which are enabled in the Essential level cover key Directory Service functionalities like User and Computer Authentication, Active Directory Web Services, DNS and different aspects of the Domain Controller Health.
This is the right choice if you would like to enable only the monitoring of the basic and most important componets of your Active Directory domain(s).
Monitoring from a domain perspective is not enabled within this level.


### Balanced

The Balanced Tuning Level contains all Discoveries, Monitors and Rules, defined in the Essential level and adds important performance and availability monitors (FSMO LDAP Binds, Ping performance), as well as Alert generating and performance collection rules, related to the Active Directory Database, Active Directory Web Services, the FSMO roles and many more. This level covers also the Health monitoring of all major Active Directory components - FSMO roles and their functions, the AD and SYSVOL replcations, the AD databse, DNS, DFS, Group Policy infrastructure, user and computer authentication and many more.
This level is the closest to the workflows (Discoveries, Rules, Monitors, etc.), which are enabled by default, when you import the Management Pack.
Monitoring from a domain member perspective covers only basic availability monitoring. Please ensure that only a few domai members (computer or member server) are allowed to do this by adding those to the following discovery "Populate AD Domain Member Monitoring Group".


### Enhanced

The Enhanced Tuning Level contains all Discoveries, Monitors and Rules, defined in the Balanced level. In addition to that it contains multiple performance collection rules, which collect metrics, related to the AD database, DNS, LSASS and the overall domain controller performance. This monitoring level can be used by Active Directory subject matter experts when indepth performance monitoring or problem troubleshooting is required.
Monitoring from a domain member perspective includes all availability and performance monitoring workflows. Please ensure that only a few domain members (computer or member server) are allowed to do this by adding those to the following discovery "Populate AD Domain Member Monitoring Group".
Please enable this with caution, as this level may increase the load on your SCOM agent on the domain controllers.

### Master

Compared to the Enhanced level, the Master level contains additional Active Directory database (NTDS.dit) and Asynchronous Thread Queue performance collection rules. Those are used only in special cases, when certain problems or performance issues have to analyzed and solved.
Monitoring from a domain member perspective includes all availability and performance monitoring workflows. Please ensure that only a few domain members (computer or member server) are allowed to do this by adding those to the following discovery "Populate AD Domain Member Monitoring Group".
Please enable this with caution, as this level may increase the load on your SCOM agent on the domain controllers.

#### Management Packs Tuned

Microsoft.Windows.Server.AD.2016.Discovery
Microsoft.Windows.Server.AD.2016.Monitoring
Microsoft.Windows.Server.AD.Class.Library
Microsoft.Windows.Server.AD.DomainMemberMonitoring
