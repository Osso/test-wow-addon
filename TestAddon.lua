local frame = CreateFrame("Frame", "TestAddonFrame", UIParent)

function TestAddon_GetVersion()
    return "1.0.0"
end

function TestAddon_Add(a, b)
    return a + b
end
