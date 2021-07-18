return {
  extension = {
    -- extension = filetype
    -- example:
    ['tf'] = 'terraform',
  },
  file_name = {
    -- special filenames, likes .bashrc
    -- we provide a decent amount
    -- name = filetype
    -- example:
    ['.bashrc'] = 'bash',
    ['.zshrc'] = 'zsh',
  },
  shebang = {
    -- Shebangs are supported as well. Currently we provide
    -- sh, bash, zsh, python, perl with different prefixes like
    -- /usr/bin, /bin/, /usr/bin/env, /bin/env
    -- shebang = filetype
    -- example:
    ['/usr/bin/node'] = 'javascript',
  }
}

