local present, project = pcall(require, "project_nvim")
local present2, telescope = pcall(require, "telescope")
if not present then return end
if not present2 then return end

project.setup {}
telescope.load_extension("projects")
