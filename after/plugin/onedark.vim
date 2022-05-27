set termguicolors
"onedark.vim override: Set a custom background color in the terminal
if (has("autocmd") && !has("gui_running"))
  augroup colors
    autocmd!
    let s:background = { "gui": "#282C34", "cterm": "235", "cterm16": "0" }
    autocmd ColorScheme * call onedark#set_highlight("Normal", { "bg": s:background }) "No `fg` setting
  augroup END
endif
