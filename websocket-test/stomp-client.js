const Stomp = require('stompjs');
const SockJS = require('sockjs-client');

// Fix for environments where WebSocket is undefined (e.g., Node.js)
global.WebSocket = require('ws');

// Replace this URL with your backend's WebSocket endpoint
const socket = new SockJS('http://localhost:8080/ws');
const stompClient = Stomp.over(socket);

// Optional: Disable debug logging
stompClient.debug = null;

// Connect to the WebSocket server
stompClient.connect({}, function () {
    console.log('✅ Connected to WebSocket server');

    // Subscribe to a topic (adjust as needed)
    stompClient.subscribe('/topic/messages', function (message) {
        const body = JSON.parse(message.body);
        console.log(`📩 Received message: ${body.sender}: ${body.content}`);
    });

    // Send a message to the server (adjust endpoint as needed)
    stompClient.send('/app/chat', {}, JSON.stringify({
        sender: 'NodeClient',
        content: 'Hello from Node.js'
    }));

    console.log('📤 Message sent!');
}, function (error) {
    console.error('❌ Connection error:', error);
});
