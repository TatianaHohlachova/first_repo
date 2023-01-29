*** Settings ***
Library  RequestsLibrary

*** Variables ***
${token}   8dea34c712d167a6a043e4db4596df005306d7fb351dbb3473ad8131a89cafa8
*** Test Cases ***
GET_STATUS
   ${get_response}   GET  https://simple-books-api.glitch.me/status
   Log to console  status ${get_response}

GET_BOOKS
   ${get_responce}   GET  https://simple-books-api.glitch.me/books
   log to console  status ${get_responce}

POST_REGISTRATION
   ${register_json}   create dictionary      clientName=Tati     clientEmail=tatianaTT@example.com
   ${post_register_response}    POST  https://simple-books-api.glitch.me/api-clients/  json=${register_json}

ORDER
   ${headers}   create dictionary   Content-Type=application/json   Authorization=Bearer ${token}
   ${order_body}   create dictionary  bookId=4   customerName=Tatiana12
   ${post_order_response}   POST    https://simple-books-api.glitch.me/orders   headers=${headers}   json=${order_body}





