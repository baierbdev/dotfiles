local add = MiniDeps.add

add({
	source = 'ray-x/go.nvim',
	depends = {
		'ray-x/guihua.lua'
	}
})
require("go").setup()
