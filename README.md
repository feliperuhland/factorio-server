# factorio-server (wip)

## New game

```sh
./server create
```

## Saved game

```sh
./server
```

## Output

```sh
Creating droplet ...
Waiting for ssh ...
Getting factorio ...
Decompressing factorio ...
Creating game [testing] ...
   0.000 2021-03-17 23:42:06; Factorio 1.1.27 (build 58240, linux64, headless)
   0.046 Operating system: Linux (Ubuntu 20.04)
   0.046 Program arguments: "./factorio/bin/x64/factorio" "--create" "testando" 
   0.046 Read data path: /root/factorio/data
   0.046 Write data path: /root/factorio [23076/24635MB]
   0.046 Binaries path: /root/factorio/bin
   0.055 System info: [CPU: DO-Premium-AMD, 1 core, RAM: 981 MB]
   0.055 Environment: DISPLAY=<unset> WAYLAND_DISPLAY=<unset> DESKTOP_SESSION=<unset> XDG_SESSION_DESKTOP=<unset> XDG_CURRENT_DESKTOP=<unset> __GL_FSAA_MODE=<unset> __GL_LOG_MAX_ANISO=<unset> __GL_SYNC_TO_VBLANK=<unset> __GL_SORT_FBCONFIGS=<unset> __GL_YIELD=<unset>
   0.055 Running in headless mode
   0.107 Loading mod core 0.0.0 (data.lua)
   0.177 Loading mod base 1.1.27 (data.lua)
   0.578 Loading mod base 1.1.27 (data-updates.lua)
   0.781 Checksum for core: 2219047882
   0.781 Checksum of base: 3777792092
   1.049 Prototype list checksum: 3034860339
   1.107 Info PlayerData.cpp:73: Local player-data.json unavailable
   1.107 Info PlayerData.cpp:78: Cloud player-data.json unavailable
   1.112 Factorio initialised
   1.113 Info Main.cpp:739: Creating new map /root/testando
   4.421 Loading level.dat: 1046125 bytes.
   4.422 Info Scenario.cpp:197: Map version 1.1.27-0
   4.461 Checksum for script /root/factorio/temp/currently-playing/control.lua: 1735894310
Done.
   4.597 Goodbye
Starting the game ...
##############################
SERVER: 104.131.97.153:34197
##############################
   0.000 2021-03-17 23:42:12; Factorio 1.1.27 (build 58240, linux64, headless)
   0.047 Operating system: Linux (Ubuntu 20.04)
   0.047 Program arguments: "./factorio/bin/x64/factorio" "--start-server" "testando" 
   0.047 Read data path: /root/factorio/data
   0.047 Write data path: /root/factorio [23075/24635MB]
   0.048 Binaries path: /root/factorio/bin
   0.056 System info: [CPU: DO-Premium-AMD, 1 core, RAM: 981 MB]
   0.056 Environment: DISPLAY=<unset> WAYLAND_DISPLAY=<unset> DESKTOP_SESSION=<unset> XDG_SESSION_DESKTOP=<unset> XDG_CURRENT_DESKTOP=<unset> __GL_FSAA_MODE=<unset> __GL_LOG_MAX_ANISO=<unset> __GL_SYNC_TO_VBLANK=<unset> __GL_SORT_FBCONFIGS=<unset> __GL_YIELD=<unset>
   0.057 Running in headless mode
   0.110 Loading mod core 0.0.0 (data.lua)
   0.179 Loading mod base 1.1.27 (data.lua)
   0.518 Loading mod base 1.1.27 (data-updates.lua)
   0.695 Checksum for core: 2219047882
   0.695 Checksum of base: 3777792092
   0.946 Prototype list checksum: 3034860339
   1.003 Info PlayerData.cpp:71: Local player-data.json available, timestamp 1616024530
   1.003 Info PlayerData.cpp:78: Cloud player-data.json unavailable
   1.007 Factorio initialised
   1.007 Warning FileUtil.cpp:575: testando not found; using testando.zip
   1.008 Info ServerSynchronizer.cpp:29: nextHeartbeatSequenceNumber(0) initialized Synchronizer nextTickClosureTick(0).
   1.008 Info ServerMultiplayerManager.cpp:780: updateTick(4294967295) changing state from(Ready) to(PreparedToHostGame)
   1.008 Info ServerMultiplayerManager.cpp:780: updateTick(4294967295) changing state from(PreparedToHostGame) to(CreatingGame)
   1.012 Loading map /root/testando.zip: 570550 bytes.
   1.038 Loading level.dat: 1046145 bytes.
   1.057 Info Scenario.cpp:197: Map version 1.1.27-0
   1.112 Loading script.dat: 387 bytes.
   1.116 Checksum for script /root/factorio/temp/currently-playing/control.lua: 1735894310
   1.123 Info UDPSocket.cpp:27: Opening socket at (IP ADDR:({0.0.0.0:34197}))
   1.124 Hosting game at IP ADDR:({0.0.0.0:34197})
   1.124 Info HttpSharedState.cpp:54: Downloading https://auth.factorio.com/generate-server-padlock-2?api_version=4
   1.187 Info AuthServerConnector.cpp:68: Obtained serverPadlock for serverHash (uVguqjSrdedx8bahPNqdjGUxv2vcAK3I) from the auth server.
   1.188 Info ServerMultiplayerManager.cpp:780: updateTick(0) changing state from(CreatingGame) to(InGame)
^C
Downloading saved game [testing] ...
Removing droplet ...
Finish!
```
