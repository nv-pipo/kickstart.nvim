return {
  {
    'CopilotC-Nvim/CopilotChat.nvim',
    branch = 'canary',
    dependencies = {
      { 'zbirenbaum/copilot.lua' }, -- or github/copilot.vim
      { 'nvim-lua/plenary.nvim' }, -- for curl, log wrapper
    },
    build = 'make tiktoken', -- Only on MacOS or Linux
    opts = {
      debug = true,
      prompts = {
        CommitStagedCustom = {
          prompt = "Write 10 commit messages for the change with commitizen convention. Make sure the title has maximum 50 characters and no message. Keep in mind you will suggest 10 commit messages, but only 1 will be used. It's better to push yourself (esp to synthesize to a higher level) and maybe wrong about some of the 10 commits because only one needs to be good. I'm looking for your best commit, not the best average commit. It's better to cover more scenarios than include a lot of overlap. Respond with one message per line",
          selection = function(_)
            local diff_part = io.popen('git diff --no-color --no-ext-diff --staged'):read '*a'

            if not diff_part or diff_part == '' then
              vim.notify('No staged changes to commit', vim.log.levels.INFO, { title = 'CopilotChat' })
              return nil
            end

            local previous_commits = io.popen('git log --pretty=format:"%s" -n 10'):read '*a'

            local lines = 'Previous commits:\n```\n' .. previous_commits .. '\n```\n\nStaged changes:\n```diff\n' .. diff_part .. '```'

            local select_buffer = {}
            select_buffer.filetype = 'markdown'
            select_buffer.lines = lines
            return select_buffer
          end,
          callback = function(response, _)
            local lines = {}
            for s in response:gmatch '[^\r\n]+' do
              table.insert(lines, s)
            end
            table.sort(lines)

            local fzf = require 'fzf'
            coroutine.wrap(function()
              local result = fzf.fzf(lines, '--ansi')
              -- result is a list of lines that fzf returns, if the user has chosen
              if result then
                require('CopilotChat').close()
                vim.fn.setreg('+', result[1])
                vim.notify('Selected commit message: ' .. result[1] .. ' saved to clipboard', vim.log.levels.INFO, {
                  title = 'CopilotChat',
                })
              end
            end)()
          end,
        },
      },
    },
  },
}
