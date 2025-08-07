-- Entferne ggf. alten Hotkey
if hkRestoreHealth ~= nil then
  hkRestoreHealth.destroy()
end

function restoreHealth()
  writeInteger(0x0045FEC8, 100)
  writeInteger(0x00522D88, 100)
  -- Heap-Adresse (nach jedem Spielneustart neu setzen)
  writeInteger(0xXXXXXXXX, 100)
end

-- Hotkey-Registrierung: Taste 'H'
hkRestoreHealth = createHotkey(restoreHealth, VK_H)
