add_rules("mode.release", "mode.debug")

add_requires("glfw",  {configs = {vs_runtime ="MD"}})

target("opengl_xmake")
  set_kind("binary")
  add_files("*.cpp")
  add_packages("glfw")
  add_deps("glad")