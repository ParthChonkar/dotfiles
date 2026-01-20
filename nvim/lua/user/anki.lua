-- For cloze expansion.

local cloze_counter = 1

-- Wrap selection in Anki cloze syntax
vim.keymap.set('v', '<leader>c', function()
  -- Get the selection
  vim.cmd('normal! "xy')
  local selected = vim.fn.getreg('x')
  
  -- Use global counter
  local num = tostring(cloze_counter)
  cloze_counter = cloze_counter + 1
  
  -- Replace selection with cloze-wrapped text
  local cloze = "{{c" .. num .. "::" .. selected .. "}}"
  vim.cmd('normal! gv"_c' .. cloze)
  
  -- Move cursor to after the closing braces
  vim.cmd('normal! `]a')
  vim.cmd('stopinsert')
  
end, { desc = "Wrap in Anki cloze" })

-- Reset cloze counter
vim.keymap.set('n', '<leader>c0', function()
  local num = vim.fn.input("Reset cloze counter to: ")
  if num == "" then num = "1" end
  cloze_counter = tonumber(num) or 1
  print("Cloze counter set to " .. cloze_counter)
end, { desc = "Reset Anki cloze counter" })
