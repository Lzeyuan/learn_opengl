set_project("opengl_learn")
set_version("1.0.0")

set_languages("c++17")
if is_plat("windows") then
    set_toolset("clang-cl")
    set_runtimes("MD")
end


includes("*/xmake.lua")