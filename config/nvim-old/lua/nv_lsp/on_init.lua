-- Use an on_init function in the language specific configuration

local M = function(client)
  client.config.flags = client.config.flags or {}
  client.config.flags.allow_incremental_sync = true
end

return M
