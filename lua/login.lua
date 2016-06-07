local uid = ngx.time()
local nickname = 'user-' .. uid

local secretkey='123ad$%^&*'
local token = ngx.md5('uid:' .. uid .. '&nickname:' .. nickname .. '&secretkey:' .. secretkey)
ngx.header['Set-Cookie'] = {"uid="..uid,"nickname="..nickname,"token="..token};

ngx.redirect('/ws.html')
