-- Destroy old timer (if exists)
if tRestoreHealth ~= nil then
  tRestoreHealth.destroy()
end

function restoreHealth()
  writeInteger(0x0045FEC8, 100)
  writeInteger(0x00522D88, 100)

-- heap-address that have to be updated after each restart
  writeInteger(0xXXXXXXXX, 100)
end

tRestoreHealth = createTimer()
tRestoreHealth.Interval = 100
tRestoreHealth.OnTimer = restoreHealth

