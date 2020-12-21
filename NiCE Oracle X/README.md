# NiCE Oracle Unix/Linux Tuning

This Tuning Pack covers the NiCE Oracle Unix/Linux Management Pack (captured with version 5.0.292.0 of the MP).

## Levels

The below levels are included in this Tuning Pack.

### DiscoveryOnly

Disables all rules and monitors, only discoveries are left enabled. Great when onboarding new monitoring as turning off everything but discoveries lets you phase

### MPDefault

Contains the MPs default tuning. Good for setting a group/object to the tuning the MP author had intended for the MP.

### Availability Only

Disable all performance monitors and performance collection rules except 'Instance Status'.

### Summary

Disable tablespace, datafile discoveries and enables summary monitors, which summarize tablespace data at the collector level. Usage: Saves you space and performance in case not all tablespace details are required.

### Summary OpsDB Only

Disable tablespace, datafile discoveries and enables summary monitors, which summarize tablespace data at the collector level. Usage: Saves you space and performance in case not all tablespace details are required. Data is written to the OpsDB only for all enabled performance rules.

### Default + OpsDB Only

Keeps existing override configuration for everything except for the performance collection rule parameter 'Collect to DataWarehouse'. This is set to FALSE for ALL performance rules.

### Default + DWH Full

Keeps existing override configuration for everything except for the performance collection rule parameter 'Collect to DataWarehouse'. This is set to TRUE for ALL performance rules.

#### Management Packs Tuned

NiCE.Oracle.X
