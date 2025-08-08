-- delete toggle from before (if already exists)
if wallhackToggle == nil then
  wallhackToggle = true
  wallhackState = false 

  createHotkey(function()
    local addr = 0x00522E2C
    wallhackState = not wallhackState
    writeInteger(addr, wallhackState and 1 or 0)
  end, VK_W)
end


