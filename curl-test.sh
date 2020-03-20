#!/bin/bash
curl -X POST -H "Authorization: key=AAAABONwKpk:APA91bH0-zeyt-632PNQoslwcMBAoJxgTTC9HCbJJMIJtSMMMjjwerlx-SoeLeXjP7Vq7frML0jUyo3kifWGVA2zB-pTWVN5WbtR6H3jVzKM4s97HseeAOlqSqkZbmUlZ8trfJ-RQapK" -H "Content-Type: application/json" \
   -d '{
  "data": {
    "notification": {
        "title": "FCM Message Test",
        "body": "This is an FCM Message",
        "icon": "/itwonders-web-logo.png",
         "badge": "/itwonders-web-logo.png"
    }
  },
  "to": "d_tS6mljIPqTwonTSWDqj_:APA91bHUW6d7mue1NehkdUOJkbjXm4ZiOe1JG13YztIs8CiBr9tamhFFdpU8BrkmJEYcvWiwv2efN3orrLFcra8AMUIhHi5gNA_upvgrf7zBo3ZNRpjsTGDxMJmWsLou1szCfUsbG7p_"
}' https://fcm.googleapis.com/fcm/send
