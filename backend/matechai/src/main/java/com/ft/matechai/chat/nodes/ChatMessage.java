package com.ft.matechai.chat.nodes;

import com.ft.matechai.chat.enums.MessageType;

public class ChatMessage
{
	private String _sender;
	private String _content;
	private MessageType _type;

	public ChatMessage(String sender, String content, MessageType type)
	{
		this._sender = sender;
		this._content = content;
		this._type = type;
	}

	public ChatMessage(String sender, MessageType type)
	{
		this._sender = sender;
		this._type = type;
	}

	public String getSender()
	{
		return _sender;
	}

	public void setSender(String sender)
	{
		this._sender = sender;
	}

	public String getContent()
	{
		return _content;
	}

	public void setContent(String content)
	{
		this._content = content;
	}

	public MessageType getType()
	{
		return this._type;
	}

	public void setType(MessageType type)
	{
		this._type = type;		
	}

}
