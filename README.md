# openresty-chatting-room
基于openresty websocket实现的聊天室

支持不同聊天室：ws://localhost:8888/s/{chat-room-id}

如ws://localhost:8888/s/1234


权限控制：如果只允许登录用户使用聊天室，则需要：

登录->设置cookie,包括uid，nickname,token

token是uid、nickname和一个key md5生成。
