# Sync UI - Key System
Documentation for SyncUI Key System, Powered by PandaAuth

## Booting the library
```lua
local SyncUI = loadstring(game:HttpGet(''))()
```

## Creating the UI
```lua
SyncUI:Create({
  ServiceName = "quantumix",
  HubName = "Quantumix Networks",
  Discord = "Jb4DP46PF8",
  SaveKey = true,
  Script = "https://raw.githubusercontent.com/ZenithDust/Quantumix/main/Quantumix.lua"
})


ServiceName = <string> - Service Name provided in the PandaAuth Website.
HubName = <string> - The name of your script hub.
Discord = <string:optional> - Discord invite code, this is optional.
SaveKey = <boolean> - If you want to save the key so users dont have to enter it again.
Script = <string> - Your script link.
```

> [!NOTE]
> This Library is on BETA, you might experience some bugs while using it
