
 local function run(msg, matches)
   if msg.to.type == 'chat' and is_sudo then
chat_upgrade('chat#id'..msg.to.id, ok_cb, false)
     return "الان سوپرگروپ میشه :|!"
   end
end
 
 return {
   patterns = {
"^[!/](upgradechat)$",
"^[!/](super)$",
  }, 
   run = run 
 }
 

