local GameVersion = 0
local canExecute = false

function _OnInit()
  GameVersion = 0
end

function GetVersion() --Define anchor addresses
  if GAME_ID == 0x431219CC and ENGINE_TYPE == 'BACKEND' then --PC
    if ReadString(0x09A92F0,4) == 'KH2J' then --EGS
			GameVersion = 2
			print('Epic Version Detected - 2fmRemoveSwarm')
			Now = 0x716DF8
			RTSwarm = 0x29C6CA4
			canExecute = true
		elseif ReadString(0x09A9830,4) == 'KH2J' then --Steam Global
			GameVersion = 3
			print('Steam Global Version Detected - 2fmRemoveSwarm')
			Now = 0x717008
			RTSwarm = 0x29C7380
			canExecute = true
		elseif ReadString(0x09A8830,4) == 'KH2J' then --Steam JP
			GameVersion = 4
			print('Steam JP Version Detected - 2fmRemoveSwarm')
			Now = 0x716008
			RTSwarm = 0x29C6B80
			canExecute = true
		end
	end
end

function _OnFrame()
    if GameVersion == 0 then --Get anchor addresses
		GetVersion()
		return
	end

    if ReadShort(Now+0x00) == 0x0708 and ReadByte (Now+0x08) == 0x4C then --Normal
        if ReadShort(RTSwarm+0x0000) == 0x0557 then
            WriteShort(RTSwarm+0x0000, 0x0000)
            WriteShort(RTSwarm+0x0040, 0x0000)
            WriteShort(RTSwarm+0x0080, 0x0000)
            WriteShort(RTSwarm+0x00C0, 0x0000)
            WriteShort(RTSwarm+0x0100, 0x0000)
            WriteShort(RTSwarm+0x0140, 0x0000)
            WriteShort(RTSwarm+0x0180, 0x0000)
            WriteShort(RTSwarm+0x01C0, 0x0000)
            WriteShort(RTSwarm+0x0200, 0x0000)
            WriteShort(RTSwarm+0x0240, 0x0000)
            WriteShort(RTSwarm+0x0280, 0x0000)
            WriteShort(RTSwarm+0x02C0, 0x0000)
            WriteShort(RTSwarm+0x0300, 0x0000)
            WriteShort(RTSwarm+0x0340, 0x0000)
            WriteShort(RTSwarm+0x0380, 0x0000)
            WriteShort(RTSwarm+0x03C0, 0x0000)
            WriteShort(RTSwarm+0x0400, 0x0000)
            WriteShort(RTSwarm+0x0440, 0x0000)
            WriteShort(RTSwarm+0x0480, 0x0000)
            WriteShort(RTSwarm+0x04C0, 0x0000)
            WriteShort(RTSwarm+0x0500, 0x0000)
            WriteShort(RTSwarm+0x0540, 0x0000)
            WriteShort(RTSwarm+0x0580, 0x0000)
            WriteShort(RTSwarm+0x05C0, 0x0000)
            WriteShort(RTSwarm+0x0600, 0x0000)
            WriteShort(RTSwarm+0x0640, 0x0000)
            WriteShort(RTSwarm+0x0680, 0x0000)
            WriteShort(RTSwarm+0x06C0, 0x0000)
            WriteShort(RTSwarm+0x0700, 0x0000)
            WriteShort(RTSwarm+0x0740, 0x0000)
        elseif ReadShort(RTSwarm+0x0000) ~= 0x0557 and ReadShort(RTSwarm+0x0080) == 0x0557 then --Boss/Enemy
            WriteShort(RTSwarm+0x0080, 0x0000)
            WriteShort(RTSwarm+0x00C0, 0x0000)
            WriteShort(RTSwarm+0x0100, 0x0000)
            WriteShort(RTSwarm+0x0140, 0x0000)
            WriteShort(RTSwarm+0x0180, 0x0000)
            WriteShort(RTSwarm+0x01C0, 0x0000)
            WriteShort(RTSwarm+0x0200, 0x0000)
            WriteShort(RTSwarm+0x0240, 0x0000)
            WriteShort(RTSwarm+0x0280, 0x0000)
            WriteShort(RTSwarm+0x02C0, 0x0000)
            WriteShort(RTSwarm+0x0300, 0x0000)
            WriteShort(RTSwarm+0x0340, 0x0000)
            WriteShort(RTSwarm+0x0380, 0x0000)
            WriteShort(RTSwarm+0x03C0, 0x0000)
            WriteShort(RTSwarm+0x0400, 0x0000)
            WriteShort(RTSwarm+0x0440, 0x0000)
            WriteShort(RTSwarm+0x0480, 0x0000)
            WriteShort(RTSwarm+0x04C0, 0x0000)
            WriteShort(RTSwarm+0x0500, 0x0000)
            WriteShort(RTSwarm+0x0540, 0x0000)
            WriteShort(RTSwarm+0x0580, 0x0000)
            WriteShort(RTSwarm+0x05C0, 0x0000)
            WriteShort(RTSwarm+0x0600, 0x0000)
            WriteShort(RTSwarm+0x0640, 0x0000)
            WriteShort(RTSwarm+0x0680, 0x0000)
            WriteShort(RTSwarm+0x06C0, 0x0000)
            WriteShort(RTSwarm+0x0700, 0x0000)
            WriteShort(RTSwarm+0x0740, 0x0000)
            WriteShort(RTSwarm+0x0780, 0x0000)
            WriteShort(RTSwarm+0x07C0, 0x0000)
        end
    end
end