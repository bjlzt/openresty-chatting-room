local secretkey='123ad$%^&*'

if ngx.var.cookie_uid == nil or ngx.var.cookie_nickname == nil or ngx.var.cookie_token == nil then
	#ngx.exit(403)
  ngx.req.set_header("Check-Login", "No")
  return
end
 
local ctoken = ngx.md5('uid:' .. ngx.var.cookie_uid .. '&nickname:' .. ngx.var.cookie_nickname .. '&secretkey:' .. secretkey)
 
if ctoken == ngx.var.cookie_token then
  ngx.req.set_header("Check-Login", "Yes")
else
	ngx.req.set_header("Check-Login", "No")
	#ngx.exit(403)
end

return
