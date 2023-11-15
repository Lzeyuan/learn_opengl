add_rules("mode.release", "mode.debug")

add_requires("glfw",  {configs = {vs_runtime ="MD"}})

target("opengl_xmake")
  set_kind("binary")
  add_files("*.cpp")
  add_includedirs("/base")
  add_packages("glfw")
  add_deps("glad")
  before_build(function (target)
    print("before_build")
    print("copying shaders from " .. "$(scriptdir)/shaders/" .. " to " .. target:targetdir())
    -- 先清空原有shaders
    os.rm(target:targetdir() .. "/shaders/")
    -- 递归复制当前目录到临时目录
    -- {rootdir = "src"}保持目录层级
    os.cp("$(scriptdir)/shaders/", target:targetdir(), {rootdir = "src"})
  end)