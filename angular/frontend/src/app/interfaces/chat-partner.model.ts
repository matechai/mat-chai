export interface ChatPartner {
  username: string;
  lastMessage: string | null;
  lastMessageTime: string | null;
  unread: boolean;
  isNew: boolean;
}