local function download(msg, success, result, matches)
  local receiver = get_receiver(msg)
  if success then
    local file = 'sticker/' .. msg.from.id .. '.webp'
    print('File downloaded to:', result)
    os.rename(result, file)
    print('File moved to:', file)
    send_large_msg(receiver, 'please send /make for create sticker\n@BeatBot_Team :))', ok_cb, false)
    redis:del("file:exe")
  else
    print('Error downloading: '..msg.id)
    send_large_msg(receiver, 'Failed, please try again!', ok_cb, false)
  end
end
local function run(msg,matches)

    if msg.media then
        if msg.media.type == 'photo' and redis:get("file:exe") then
          if redis:get("file:exe") == 'waiting' then
            load_document(msg.id, download, msg)

          end
        end
    end
    if matches[1] == 'sticker' then
      redis:set("file:exe", "waiting")
      return '@RM13790115 یه عکس بفرست تبدیلش کنم به استیکر
    if matches[1] == 'make' then
            local receiver = get_receiver(msg)
                              send_document(receiver, "./sticker/"..msg.from.id..".webp", ok_cb, false)

      return 'by @BeatBot_Team :)) @RM13790115 '
end

    return
end
return {
  patterns = {
    "^[/!](make)$",
  "^[!/](sticker)$",
  "%[(photo)%]",
  },
  run = run,
}
