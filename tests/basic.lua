-- run-tests loads TestAddon from TestAddon.toc before these files run,
-- so the tests use the addon's own globals and frames.

test("addon frame exists", function()
    assertNotNil(TestAddonFrame)
    assertEquals("TestAddonFrame", TestAddonFrame:GetName())
end)

test("addon version", function()
    assertEquals("1.0.0", TestAddon_GetVersion())
end)

test("add function works", function()
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
