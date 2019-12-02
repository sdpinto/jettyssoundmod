--------------------------------------
-- Namespace and Versioning
--------------------------------------
local version = "5.10"
local _, core = ...; -- Namespace

--------------------------------------
-- Custom Slash Command
--------------------------------------
core.commands = {

	["toggle"] = function ()
		core:Print("Version "..version.." toggled: "..core.Config:Toggle(true)) -- this is a function (no knowledge of Config object)
	end,
	
	["list"] = core.Config.List,
	
	["help"] = function()
		core:Print("Version "..version.." is currently "..core.Config:Toggle(false))
		core:Print("|cff00cc66/js toggle|r - toggles sounds on/off");
		core:Print("|cff00cc66/js list|r - lists available keys");
		core:Print("|cff00cc66/js help|r - shows this help info");
	end,
	
};

local function HandleSlashCommands(str)	
	if (#str == 0) then	
		-- User just entered "/js" with no additional args.
		core.commands.help();
		return;		
	end	
	
	local args = {};
	for _, arg in ipairs({ string.split(' ', str) }) do
		if (#arg > 0) then
			table.insert(args, arg);
		end
	end
	
	local path = core.commands; -- required for updating found table.
	
	for id, arg in ipairs(args) do
		if (#arg > 0) then -- if string length is greater than 0.
			arg = arg:lower();			
			if (path[arg]) then
				if (type(path[arg]) == "function") then				
					-- all remaining args passed to our function!
					path[arg](select(id + 1, unpack(args))); 
					return;					
				elseif (type(path[arg]) == "table") then				
					path = path[arg]; -- another sub-table found!
				end
			else
				-- does not exist!
				core.commands.help();
				return;
			end
		end
	end
end

--------------------------------------
-- Config functions
--------------------------------------


function core:Print(...)
    local hex = select(4, self.Config:GetThemeColor());
    local prefix = string.format("|cff%s%s|r", hex:upper(), "JettySounds:");	
    DEFAULT_CHAT_FRAME:AddMessage(string.join(" ", prefix, ...));
end

-- WARNING: self automatically becomes events frame!


----------------------------------
-- Register Slash Commands!
----------------------------------
--SLASH_RELOADUI1 = "/rl"; -- new slash command for reloading UI
--SlashCmdList.RELOADUI = ReloadUI;
	
SLASH_JettySounds1 = "/js";
SlashCmdList.JettySounds = HandleSlashCommands;
	

-----------------------------------
--  Event Handling
-----------------------------------	
	
local events = CreateFrame("Frame");
events:RegisterEvent("ADDON_LOADED");
events:RegisterEvent("CHAT_MSG_GUILD");
events:RegisterEvent("CHAT_MSG_OFFICER");
events:RegisterEvent("CHAT_MSG_WHISPER");
events:RegisterEvent("CHAT_MSG_SAY");
events:RegisterEvent("PLAYER_LOGIN");
events:RegisterEvent("PLAYER_DEAD");
events:RegisterEvent("CHAT_MSG_CHANNEL");

events:SetScript("OnEvent", function (self, event, ...)
	arg1,arg2 = ...
	
	-- When Addon Loaded
	if (event == "ADDON_LOADED") then
		if(JettyToggle == nil) then
			JettyToggle = true;
		end
	end
	
	-- When Player Logs In
	if (event == "PLAYER_LOGIN") then
		core:Print("Version: "..version.." loaded and "..core.Config:Toggle(false).." » |cff00cc66/js help|r shows the help menu");
	end
	

	--if (event == "PLAYER_DEAD") then
	--	SendChatMessage("!died", "OFFICER");
	--end

	-- Guild Chat Reader
	if (event == "CHAT_MSG_OFFICER" or event == "CHAT_MSG_GUILD" or event == "CHAT_MSG_CHANNEL" ) then
		if (arg1 == "!ver") then SendChatMessage("<Jettys Sound Mod "..version..">", "OFFICER")
		elseif(core.Sounds[arg1] ~= nil and JettyToggle) then PlaySoundFile(core.Sounds[arg1], "Master")
		end
			
	end

end)


