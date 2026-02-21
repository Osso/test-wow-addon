test("addon frame exists", function()
    local f = CreateFrame("Frame", "TestAddonFrame", UIParent)
    assertNotNil(f)
    assertEquals("TestAddonFrame", f:GetName())
end)

test("add function works", function()
    -- Load addon code inline since --no-addons skips TOC loading
    function TestAddon_Add(a, b)
        return a + b
    end

    assertEquals(3, TestAddon_Add(1, 2))
    assertEquals(0, TestAddon_Add(-1, 1))
    assertEquals(-5, TestAddon_Add(-2, -3))
end)

test("CreateFrame returns frame with methods", function()
    local f = CreateFrame("Frame", nil, UIParent)
    assertNotNil(f)
    assertNil(f:GetName())
    f:SetSize(100, 50)
    assertEquals(100, f:GetWidth())
    assertEquals(50, f:GetHeight())
end)
