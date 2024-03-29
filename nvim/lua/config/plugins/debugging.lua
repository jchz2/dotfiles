return {
  "mfussenegger/nvim-dap",
  dependencies = {
    'rcarriga/nvim-dap-ui',
    "leoluz/nvim-dap-go",
    -- "microsoft/vscode-js-debug"
  },
  config =function ()
    local dap = require("dap")
    local dapui = require("dapui")

    require("dapui").setup()
    require("dap-go").setup()
    -- require("dap-vscode-js").setup({
    --   -- node_path = "node", -- Path of node executable. Defaults to $NODE_PATH, and then "node"
    --   -- debugger_path = "(runtimedir)/site/pack/packer/opt/vscode-js-debug", -- Path to vscode-js-debug installation.
    --   -- debugger_cmd = { "js-debug-adapter" }, -- Command to use to launch the debug server. Takes precedence over `node_path` and `debugger_path`.
    --   adapters = { 'pwa-node', 'pwa-chrome', 'pwa-msedge', 'node-terminal', 'pwa-extensionHost' }, -- which adapters to register in nvim-dap
    --   -- log_file_path = "(stdpath cache)/dap_vscode_js.log" -- Path for file logging
    --   -- log_file_level = false -- Logging level for output to file. Set to false to disable file logging.
    --   -- log_console_level = vim.log.levels.ERROR -- Logging level for output to console. Set to false to disable console output.
    -- })
    --
    -- for _, language in ipairs({ "typescript", "javascript" }) do
    --   require("dap").configurations[language] = {
    --     '...' -- see below
    --   }
    -- end
    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
      dapui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
      dapui.close()
    end

    vim.keymap.set('n', '<Leader>dt', dap.toggle_breakpoint, {})
    vim.keymap.set('n', '<Leader>dc', dap.continue, {})
  end
}
