require('gitsigns').setup{
  on_attach = function(bufnr)
    local gitsigns = require('gitsigns')

    local function map(mode, l, r, opts)
      opts = opts or {}
      opts.buffer = bufnr
      vim.keymap.set(mode, l, r, opts)
    end

    -- Navigation

    if vim.wo.diff then
        map("n", ']c', vim.cmd.normal({']c', bang = true}), { desc =  '' })
        map("n", ']c', vim.cmd.normal({'[c', bang = true}), { desc =  '' })
    else 
        map("n", ']c', "<cmd>lua require 'gitsigns'.nav_hunk('next')<cr>zz", { desc =  '' })
        map("n", '[c', "<cmd>lua require 'gitsigns'.nav_hunk('prev')<cr>zz", { desc =  '' })
    end

    -- Actions
    map('n', '<leader>hs', gitsigns.stage_hunk, { desc =  'Gitsigns Stage hunk' })
    map('n', '<leader>hr', gitsigns.reset_hunk, { desc =  'Gitsigns Reset hunk' })

    map('v', '<leader>hs', function() gitsigns.stage_hunk({ vim.fn.line('.'), vim.fn.line('v') }) end, { desc =  'Gitsigns Stage hunk' })

    map('v', '<leader>hr', function() gitsigns.reset_hunk({ vim.fn.line('.'), vim.fn.line('v') }) end, { desc =  'Gitsigns Reset hunk' })

    map('n', '<leader>hS', gitsigns.stage_buffer, { desc =  'Gitsigns Stage buffer' })
    map('n', '<leader>hR', gitsigns.reset_buffer, { desc =  'Gitsigns Reset buffer' })
    map('n', '<leader>hp', gitsigns.preview_hunk, { desc =  'Gitsigns Preview hunk' })
    map('n', '<leader>hi', gitsigns.preview_hunk_inline, { desc =  'Gitsigns Preview hunk inline' })

    map('n', '<leader>hb', function() gitsigns.blame_line({ full = true }) end, { desc =  'Gitsigns Blame line' })

    map('n', '<leader>hd', gitsigns.diffthis, { desc =  'Gitsigns Diff buffer' })

    map('n', '<leader>hD', function() gitsigns.diffthis('~') end, { desc =  'Gitsigns Diff buffer ~ ' })

    map('n', '<leader>hQ', function() gitsigns.setqflist('all') end , { desc =  'Gitsigns See all git changes' })
    map('n', '<leader>hq', gitsigns.setqflist, { desc =  'Gitsigns See git changes for buffer' })

    -- Toggles
    map('n', '<leader>tb', gitsigns.toggle_current_line_blame, { desc =  'Gitsigns Toggle line blame' })
    map('n', '<leader>td', gitsigns.toggle_deleted, { desc =  'Gitsigns Toggle deleted words' })
    map('n', '<leader>tw', gitsigns.toggle_word_diff, { desc =  'Gitsigns Toggle word diff' })

    -- Text object
    map({'o', 'x'}, 'ih', gitsigns.select_hunk, { desc =  'Gitsigns Select hunk' })
  end
}
