-- A Lua extension to MPV to improve interfacing with vmp
msg = require 'mp.msg'
function on_property(name, value)
  if value == nil then value = "" end
  msg.info(name.." "..value)
end

mp.observe_property("pause", "string", on_property)
on_property("pause", mp.get_property("pause"))
mp.observe_property("eof-reached", "string", on_property)
on_property("eof-reached", mp.get_property("eof-reached"))
