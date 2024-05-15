function ColorMyWords(color) 
	color = color or "nord"
	vim.cmd[[colorscheme nord]]
end

ColorMyWords()
