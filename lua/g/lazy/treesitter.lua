return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
				"javascript", "typescript", "c", "lua", "python", "bash",
			},

			auto_install = true,

			highlight = {
				enable = true,

				disable = function(lang, buf)
					local max_filexize = 100 * 1024 -- 100 KB
					local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
					if ok and statts and stats.size > max_filesize then
						return true
					end
				end
			}
		})
	end
}
