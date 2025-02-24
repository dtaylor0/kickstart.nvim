return {
  'elentok/open-link.nvim',
  init = function()
    local expanders = require 'open-link.expanders'
    require('open-link').setup {
      expanders = {
        -- expands "{user}/{repo}" to the github repo URL
        expanders.github,

        -- expands "format-on-save#15" the issue/pr #15 in the specified github project
        -- ("format-on-save" is the shortcut/keyword)
        expanders.github_issue_or_pr('format-on-save', 'elentok/format-on-save.nvim'),
      },
    }
  end,
  cmd = { 'OpenLink', 'PasteImage' },
  keys = {
    {
      'ge',
      '<cmd>OpenLink<cr>',
      desc = 'Open the link under the cursor',
    },
    {
      '<Leader>ip',
      '<cmd>PasteImage<cr>',
      desc = 'Paste image from clipboard',
    },
  },
}
