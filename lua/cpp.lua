--- <leader> io
vim.keymap.set(
  "n",
  "<leader>io",
  ":vsp input.txt<CR>:sp output.txt<CR><C-w>h:vertical resize 80<CR>",
  {}
)

-- compile: <F9>
vim.keymap.set(
  "n",
  "<F9>",
  ":w<CR> :!g++ -std=c++17 -Wshadow -Wall -o %< % -O2 -Wno-unused-result && ./%< < input.txt > output.txt<CR>",
  {}
)

-- Build: <F10>
vim.keymap.set(
  "n",
  "<F10>",
  ":w<CR> :!g++ -std=c++17 -Wshadow -Wall -o %< % -g -fsanitize=address -fsanitize=undefined -D_GLIBCXX_DEBUG && ./%< < input.txt > output.txt<CR>",
  {}
)
