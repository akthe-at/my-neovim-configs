return {
    {
        "nvim-neotest/neotest",
        lazy = true,
        opts = {
            adapters = {
                ["neotest-python"] = {
                    dap = {
                        console = "integratedTerminal",
                        justMyCode = false,
                    },
                    args = { "--log-level", "DEBUG", "--quiet" },
                    runner = "pytest",
                    python = "/.venv/Scripts/python",
                },
            },
        },
    },
}
