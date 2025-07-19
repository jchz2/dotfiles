return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "rcarriga/nvim-dap-ui",
    "nvim-neotest/nvim-nio",

    -- Show variable values inline as virtual text
    "theHamsta/nvim-dap-virtual-text",
  },
  config = function()
    local dap = require("dap")
    local dapui = require("dapui")

    dapui.setup({
      icons = { expanded = "🔽", collapsed = "▶️", current_frame = "**️⃣" },
      controls = {
        icons = {
          pause = "⏸️",
          play = "▶️",
          step_into = "⏎",
          step_over = "⏭️",
          step_out = "⏮️",
          step_back = "⏪",
          run_last = "⏩",
          terminate = "⏹️",
          disconnect = "⏏️",
        },
      },
    })

    dap.adapters["pwa-node"] = {
      type = "server",
      host = "localhost",
      port = "${port}",
      executable = {
        command = "node",
        args = {
          vim.fn.stdpath("data").. "/mason/packages/js-debug-adapter/js-debug/src/dapDebugServer.js",
          "${port}",
        },
      },
    }

    for _, language in pairs({ "javascript", "typescript", "javascriptreact", "typescriptreact" }) do
      dap.configurations[language] = {
        {
          name = "Launch",
          type = "pwa-node",
          request = "launch",
          program = "${file}",
          cwd = "${workspaceFolder}",
        },
        {
          name = "Attach to node process",
          type = "pwa-node",
          request = "attach",
          rootPath = "${workspaceFolder}",
          processId = require("dap.utils").pick_process,
        }
      }
    end

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

    -- vim.keymap.set('n', '<Leader>dt', dap.toggle_breakpoint, {})
    -- vim.keymap.set('n', '<Leader>dc', dap.continue, {})
    -- vim.keymap.set('n', '<Leader>db', dap.step_back, {})
  end,
}
