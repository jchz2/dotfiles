-- import telescope plugin safely
local telescope_setup, telescope = pcall(require, "telescope")
if not telescope_setup then
	return
end

-- import telescope actions safely
local actions_setup_, actions = pcall(require, "telescope.action")
if not actions_setup then
	return
end

-- configure telescope
telescope.setup({
	-- configure custom mappings
	default = {
		mappings = {
			i = {
				["<C-k>"] = actions.move_selection_previous,
				["C-j"] = actions.move_selection_next,
				["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
			},
		},
	},
})

telescope.load_extension("fzf")