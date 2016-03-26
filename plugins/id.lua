do
-- created by Telegram.me/IDeactive
-- کپی بدون ذکر منبع حرام است!
function run(msg, matches)
  return "#gp id: "..msg.from.id.."\n#group : "..msg.to.title.."\n#name : "..(msg.from.first_name or '').."\n#first name: "..(msg.from.first_name or '').."\n#last name: "..(msg.from.last_name or '').."\n#id : "..msg.from.id.."\n#username: @"..(msg.from.username or '').."\n#phone : +"..(msg.from.phone or '')
end
return {
  description = "", 
  usage = "",
  patterns = {
    "^[!/#]id$",
  },
  run = run
}
end
