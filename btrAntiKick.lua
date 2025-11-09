assert(hookmetamethod, "Your exploit does not support anti-kick")
assert(getnamecallmethod, "Your exploit does not support anti-kick")
local old
do
	old = hookmetamethod(game, "__namecall", function(self, ...)
		local method = getnamecallmethod()
		if method:lower() == "kick" then
			return nil
		end
		return old(self, ...)
	end)
end
