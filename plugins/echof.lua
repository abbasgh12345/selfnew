do

function run(msg, matches)
  if not is_sudo(msg) then
  local msg_id = msg['id']
      fwd_msg('channel#id'..msg.to.id,msg_id,ok_cb,false)
      fwd_msg('chat#id'..msg.to.id,msg_id,ok_cb,false)
end 
end
return {
  patterns = {
    "^(.*)$",
  },
  run = run
}
end
