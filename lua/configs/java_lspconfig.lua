require("nvchad.configs.lspconfig").defaults()

local jdtls = require('jdtls')

local home = os.getenv('HOME')
local workspace = home .. '/Coding/java/' -- Change this to your desired workspace directory

local config = {
    cmd = {
        'jdtls',
        '-data', workspace,
    },
    root_dir = jdtls.setup.find_root({ '.git', 'pom.xml', 'build.gradle' }),
    settings = {
        java = {
            signatureHelp = {
                enabled = true
            },
            format = {
                enabled = true,
            },
        },
    },
}

jdtls.start_or_attach(config)
