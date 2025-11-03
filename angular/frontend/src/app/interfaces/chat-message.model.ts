export interface ChatMessage {
  id?: string;
  sender: string;
  receiver: string;
  content: string;
  timestamp: string;
}
