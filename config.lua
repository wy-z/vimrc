-- utils
function string:endswith(ending)
  return ending == "" or self:sub(- #ending) == ending
end

-- source config files
THIS_DIR = vim.fn.fnamemodify(vim.fn.resolve(debug.getinfo(1).source:sub(2)), ":h")

for _, fpath in ipairs(vim.split(vim.fn.globpath(THIS_DIR .. "/conf.d", "*"), "\n")) do
  if string.endswith(fpath, ".vim") or string.endswith(fpath, ".lua") then
    vim.cmd("source " .. fpath)
  end
end
