# 🚀 Online hosting store using Claude Desktop


-  Docker
-  MongoDB
-  Python
## 📦 Project Structure


To successfully run the program

in your terminal:
 git clone --branch buyer-edits https://github.com/CULPR1/atlas-docker

 cd atlas-docker

 docker compose build

 docker compose up


To access it on claude:
'you will need mcp_proxy installed privately on your system,
After installing Claude desktop,
go to the claude config file and input


{
  "mcpServers": {
    "filesystem": {
      "command": "npx",
      "args": [
        "-y",
        "@modelcontextprotocol/server-filesystem",
        "C:\\Users\\pavit\\Desktop",
        "C:\\Users\\pavit\\Downloads",
        "C:\\Users\\pavit\\Pictures\\Wallpapers"
      ]
    },
    "seller":{
      "command" : "C:\\Users\\pavit\\AppData\\Local\\Programs\\Python\\Python310\\Scripts\\mcp-proxy",
      "args" :  [
        "http://127.0.0.1:8001/mcp"
      ]
    },
    "user":{
      "command" : "C:\\Users\\pavit\\AppData\\Local\\Programs\\Python\\Python310\\Scripts\\mcp-proxy",
      "args" :  [
        "http://127.0.0.1:8000/mcp"
      ]
    },

      "buyer":{
      "command" : "C:\\Users\\pavit\\AppData\\Local\\Programs\\Python\\Python310\\Scripts\\mcp-proxy",
      "args" :  [
        "http://127.0.0.1:8002/mcp"
      ]
      }

    }
  }
where 127.0.0.1 will be replace witht he public ip address of the instance used.

the code is in the buyer-edits branch of https://github.com/CULPR1/atlas-fastapi

There are 3 servers:
- User --> login and registering
- Seller -- > 4 functions for inventory management
- Buyer -- > 8 functions for browsing and payment, with an extra sector listing all transactions

The database link url is mongodb+srv://pavithiranravikumar2005:pavikavi2005@cluster0.oy6101i.mongodb.net/



