const Stomp = require('stompjs');
const SockJS = require('sockjs-client');

// Fix for Node.js environments
global.WebSocket = require('ws');

// === CONFIGURE YOUR USERNAME HERE ===
const username = process.argv[2]; // use command-line argument (e.g. user1 or user2)
if (!username) {
  console.error('❌ Please provide a username: node client.js user1');
  process.exit(1);
}

// === CONNECT TO YOUR BACKEND ===
const socket = new SockJS('http://localhost:8080/ws');
const stompClient = Stomp.over(socket);

// Optional: silence debug logs
stompClient.debug = null;

stompClient.connect({}, () => {
  console.log(`✅ Connected as ${username}`);

  // Subscribe to private queue
  stompClient.subscribe(`/user/${username}/queue/messages`, (message) => {
    const body = JSON.parse(message.body);
    console.log(`📩 Message from ${body.sender}: ${body.content}`);
  });

  // Register the user on server side
  stompClient.send('/app/chat.addUser', {}, JSON.stringify({
    sender: username
  }));

  console.log(`👤 Registered user: ${username}`);
});
