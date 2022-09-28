return require("packer").startup(function()
    use("wbthomason/packer.nvim")
    use("sbdchd/neoformat")

    -- Simple plugins can be specified as strings
    use("TimUntersberger/neogit")

    -- TJ created lodash of neovim
    use("nvim-lua/plenary.nvim")
    use("nvim-lua/popup.nvim")
    use("nvim-telescope/telescope.nvim")

    -- Status line and theme
    use({
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    })
    use("gruvbox-community/gruvbox")


    -- Color theme
    use("folke/tokyonight.nvim")
    use 'Mofiqul/vscode.nvim'
    
    -- Automatically close brakets
    use({
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    })

    -- LSP managers
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'
    use 'neovim/nvim-lspconfig'

    -- Completion framework:
    use 'hrsh7th/nvim-cmp' 

    -- LSP completion source:
    use 'hrsh7th/cmp-nvim-lsp'

    -- Useful completion sources:
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-nvim-lsp-signature-help'
    use 'hrsh7th/cmp-vsnip'                             
    use 'hrsh7th/cmp-path'                              
    use 'hrsh7th/cmp-buffer'                            
    use 'hrsh7th/vim-vsnip'

    -- Rust tools
    use 'simrat39/rust-tools.nvim'
    use {
        'saecki/crates.nvim',
        tag = "v0.3.0",
        event = { "BufRead Cargo.toml" },
        requires = { 'vim-lua/plenary.nvim' },
        config = function() require('crates').setup() end,
    }

    -- Git 
    use { 'tpope/vim-fugitive' }
    use { 'rhysd/git-messenger.vim' }
    use { 'rhysd/committia.vim' }
    use { 'mhinz/vim-signify' }

    -- Treesitter
    use("nvim-treesitter/playground")
    use 'nvim-treesitter/nvim-treesitter'
    
    -- Debugging
    use("mfussenegger/nvim-dap")
    use("rcarriga/nvim-dap-ui")
    use("theHamsta/nvim-dap-virtual-text")

    -- Floating Terminal
    use 'voldikss/vim-floaterm'
end)



