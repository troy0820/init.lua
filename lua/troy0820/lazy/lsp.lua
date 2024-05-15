return {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v3.x',
	  dependencies = {
		  --- Uncomment the two plugins below if you want to manage the language servers from neovim
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},


		  {'neovim/nvim-lspconfig'},
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lsp-signature-help'},
		  {'L3MON4D3/LuaSnip'},
	  },
config = function()
	local lsp_zero = require('lsp-zero')

	lsp_zero.on_attach(function(client, bufnr)
		lsp_zero.default_keymaps({buffer = bufnr})
	end)

	require('mason').setup({})
	require('mason-lspconfig').setup({
		handlers = {
			function(server_name)
				require('lspconfig')[server_name].setup({}) --lsp_zero.default_setup,
			end
		},
	})

	local cmp = require('cmp')
	local cmp_action = require('lsp-zero').cmp_action()

	cmp.setup({
		sources = cmp.config.sources({
			{ name = 'nvim_lsp' },
			{ name = 'nvim_lsp_signature_help' }

		}),
		mapping = cmp.mapping.preset.insert({
			['<Tab>'] = cmp_action.tab_complete(),
			['<S-Tab>'] = cmp_action.select_prev_or_fallback(),
		}),
	})
end
}
