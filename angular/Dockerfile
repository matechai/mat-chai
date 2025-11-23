FROM node:alpine

WORKDIR /app/frontend

COPY frontend/package*.json ./

RUN npm install -g @angular/cli \
	&& npm install \
	&& npm install @stomp/stompjs sockjs-client \
	&& npm install --save-dev @types/sockjs-client

COPY frontend/ .

# ---- DEV Mode (hot reload) ----
CMD ["ng", "serve", "--host", "0.0.0.0", "--poll", "2000", "--proxy-config", "proxy.conf.json"]
# CMD ["ng", "serve", "--host", "0.0.0.0", "--poll", "2000", "--proxy-config", "proxy.conf.json"]

# CMD ["ng", "serve", "--host", "0.0.0.0", "--poll", "2000"]

# ---- PROD Mode ----
# RUN ng build --configuration=production
# RUN npm install -g http-server
# CMD ["http-server", "dist/frontend", "-p", "4200", "-a", "0.0.0.0"]
