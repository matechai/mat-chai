/**
 * Simple Node.js STOMP chat client
 * Usage:
 *   node client.js user1
 *   node client.js user2
 */

const Stomp = require('stompjs');
const SockJS = require('sockjs-client');
const readline = require('readline');

// Polyfill WebSocket for Node
global.WebSocket = require('ws');

// --- CONFIG ---
const username = process.argv[2];
if (!username) {
  console.error('❌ Please run with a username: node client.js user1');
  process.exit(1);
}

// Your Spring Boot WebSocket endpoint
const SOCKET_URL = 'http://localhost:8080/ws';

// Create SockJS and STOMP clients
const socket = new SockJS(SOCKET_URL);
const stompClient = Stomp.over(socket);

// Optional: silence STOMP debug logs
stompClient.debug = null;

// Setup console input
const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout,
});

// Utility: send a chat message
function sendMessage(to, content) {
  const message = {
    sender: username,
    receiver: to,
    content: content,
    type: 'CHAT'
  };
  stompClient.send('/app/chat.sendMessage', {}, JSON.stringify(message));
  console.log(`📤 Sent to ${to}: ${content}`);
}

// Recursive prompt to keep chatting
function chatPrompt() {
  rl.question('👤 Send to (username): ', (receiver) => {
    if (!receiver.trim()) return chatPrompt();
    rl.question('💬 Message: ', (text) => {
      sendMessage(receiver.trim(), text.trim());
      chatPrompt();
    });
  });
}

// --- CONNECT TO SERVER ---
console.log(`🔌 Connecting to ${SOCKET_URL} as ${username}...`);
stompClient.connect({}, () => {
  console.log(`✅ Connected as ${username}`);

  // Subscribe to this user's private queue
  stompClient.subscribe(`/user/${username}/queue/messages`, (msg) => {
    const body = JSON.parse(msg.body);
    console.log(`\n📩 Message from ${body.sender}: ${body.content}`);
    // chatPrompt();
  });

  // Register user on the server
  stompClient.send('/app/chat.addUser', {}, JSON.stringify({ sender: username }));
  console.log(`👋 Registered user: ${username}`);

  // Start chatting
  chatPrompt();
}, (error) => {
  console.error('❌ Connection error:', error);
});
