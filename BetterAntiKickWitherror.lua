assert(hookmetamethod, "Your exploit does not support anti-kick")
assert(getnamecallmethod, "Your exploit does not support anti-kick")
hookmetamethod(game, "__namecall", function(self, ...)
    local method = getnamecallmethod()
    if method:lower() == "kick" then
        return error("Attempt to call a nil value", 2)
    end
end)
