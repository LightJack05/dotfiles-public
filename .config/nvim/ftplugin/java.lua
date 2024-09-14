local home = os.getenv("HOME")
local workspace_folder = home .. "/.local/share/eclipse/" .. vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
local jdtls_config = {
	cmd = {
		home .. '/.local/share/nvim/mason/packages/jdtls/bin/jdtls',
		"-data", workspace_folder,
		"--module-path /usr/lib/jvm/java-22-openjfx/lib/",
		"--add-modules javafx.controls,javafx.fxml"
	},

	root_dir = vim.fn.getcwd(),
	settings = {
		java = {
			project = {
				referencedLibraries = {
					vim.fn.getcwd() .. '/lib/*.jar'
				}
			}
		}
	},
	init_options = {
		bundles = {
			vim.fn.glob(home ..
				"/.local/share/nvim/mason/share/java-debug-adapter/com.microsoft.java.debug.plugin.jar"),
			vim.fn.glob(vim.fn.getcwd() .. "/lib/*")
		},
	}
}
require('jdtls').start_or_attach(jdtls_config)
