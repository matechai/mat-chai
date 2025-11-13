export enum NotificationType {
  CHAT = 'CHAT',
  MATCH = 'MATCH',
  LIKE = 'LIKE',
  UNLIKE = 'UNLIKE'
}

export interface Notification {
  id: string;
  sender: string;
  receiver: string;
  type: NotificationType;
  message: string;
  read: boolean;
  createdAt: string;
}