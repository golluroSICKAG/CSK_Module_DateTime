# Changelog
All notable changes to this project will be documented in this file.

## Release 3.3.0

### Improvements
- Check if it is possible to set date/time/timezone on the device (not available for SAE, Emulator and SIM300)

### Bugfix
- Legacy bindings of ValueDisplay elements within UI did not work if deployed with VS Code AppSpace SDK
- UI differs if deployed via Appstudio or VS Code AppSpace SDK
- Fullscreen icon of iFrame was visible

## Release 3.2.0

### New features
- Provide version of module via 'OnNewStatusModuleVersion'
- Function 'getParameters' to provide PersistentData parameters
- Check if features of module can be used on device and provide this via 'OnNewStatusModuleIsActive' event / 'getStatusModuleActive' function
- Check if NTP feature is availabel and provide it via 'OnNewStatusNTPIsAvailable' event

### Improvements
- New UI design available (e.g. selectable via CSK_Module_PersistentData v4.1.0 or higher), see 'OnNewStatusCSKStyle'
- 'loadParameters' returns its success
- 'sendParameters' can control if sent data should be saved directly by CSK_Module_PersistentData
- Changed log level of some messages from 'info' to 'fine'
- Added UI icon and browser tab information

## Release 3.1.1

### Bugfix
- NTP server IP input field not readable in UI on SID

## Release 3.1.0

### New features
- Set custom timezone in UI

## Release 3.0.0

### Improvements
- Renamed "Ntp" to "NTP" within functions/events
- Using recursive helper functions to convert Container <-> Lua table

## Release 2.6.0

### Improvements
- Update to EmmyLua annotations
- Usage of lua diagnostics
- Documentation updates

## Release 2.5.0

### Improvements
- Using internal moduleName variable to be usable in merged apps instead of _APPNAME, as this did not work with PersistentData module 

## Release 2.4.1

### Improvements
- Naming of UI elements and adding some mouse over info texts
- Appname added to log messages
- Added ENUM
- Minor edits

### Bugfix
- UI events notified after pageLoad after 300ms instead of 100ms to not miss

## Release 2.4.0

### Improvements
- Check if running on Emulator / SAE -> time settings deactivated
- Update of helper funcs to support 4-dim tables for PersistentData
- Minor code edits / docu updates

### Bugfix
- UI reload was too early after first logger setup for UserManagement feature

## Release 2.3.1

### Bugfix
- UI files were not updated

## Release 2.3.0

### New features
- NTPClient functionality
- Setting of timezone
- Showing UTC and Local time in UI

### Improvements
- Loading only required APIs ('LuaLoadAllEngineAPI = false') -> less time for GC needed
- ParameterName available on UI
- Manual times not stored as parameters anymore
- Updated documentation

## Release 2.2.0

### Improvements
- Prepared for all CSK user levels: Operator, Maintenance, Service, Admin
- Renamed page folder accordingly to module name
- Updated documentation

### Bugfix
- Changed status type of user levels from string to bool

## Release 2.1.0

### New features
- Added support for userlevels, required userlevel for the whole UI is Maintenance

## Release 2.0.0

### New features
- Update handling of persistent data according to CSK_PersistentData module ver. 2.0.0

## Release 1.0.0
- Initial commit