---@diagnostic disable: undefined-global, redundant-parameter, missing-parameter

-- Load all relevant APIs for this module
--**************************************************************************

local availableAPIs = {}

-- Function to load all default APIs
local function loadAPIs()
  CSK_DateTime = require 'API.CSK_DateTime'

  Log = require 'API.Log'
  Log.Handler = require 'API.Log.Handler'
  Log.SharedLogger = require 'API.Log.SharedLogger'

  Container = require 'API.Container'
  DateTime = require 'API.DateTime'
  Engine = require 'API.Engine'
  Object = require 'API.Object'
  Timer = require 'API.Timer'

  -- Check if related CSK modules are available to be used
  local appList = Engine.listApps()
  for i = 1, #appList do
    if appList[i] == 'CSK_Module_PersistentData' then
      CSK_PersistentData = require 'API.CSK_PersistentData'
    elseif appList[i] == 'CSK_Module_UserManagement' then
      CSK_UserManagement = require 'API.CSK_UserManagement'
    end
  end
end

-- Function to load specific APIs
local function loadSpecificAPIs()
  NTPClient = require 'API.NTPClient'
end

-- Function to check if features to set date, time, timezone is availale (not supported on SAE and SIM300)
local function checkDateTimeZone()
  local deviceName = Engine.getTypeName()
  local notSupportedDevice = string.find(deviceName, 'SIG300') or string.find(deviceName, 'SIM300') or string.find(deviceName, 'AppEngine') or string.find(deviceName, 'AppStudio')
  if notSupportedDevice then
    return false
  else
    return true
  end
end

availableAPIs.default = xpcall(loadAPIs, debug.traceback) -- TRUE if all default APIs were loaded correctly
availableAPIs.specific = xpcall(loadSpecificAPIs, debug.traceback) -- TRUE if all specific APIs were loaded correctly
availableAPIs.dateTimeZone = checkDateTimeZone() -- FALSE if device is known to not support setDateTime / setTimeZone function

return availableAPIs
--**************************************************************************