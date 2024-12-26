import React, { useState } from 'react';
import axios from 'axios';
import './App.css';
import medicalIcon from './medical-icon.png'; 

function App() {
  const [query, setQuery] = useState('');
  const [messages, setMessages] = useState([]);

  const handleSubmit = async (e) => {
    e.preventDefault();
    const userMessage = { text: query, type: 'user' };
    setMessages([...messages, userMessage]);
    setQuery('');

    try {
      const res = await axios.post('http://127.0.0.1:8000/ask', { query }); 
      const botMessage = { text: res.data.ai_model_response, type: 'bot' };
      setMessages([...messages, userMessage, botMessage]);
    } catch (error) {
      console.error('Error fetching data:', error);
      const errorMessage = { text: 'Error fetching data', type: 'bot' };
      setMessages([...messages, userMessage, errorMessage]);
    }
  };

  return (
    <div className="App">
      <header className="App-header">
        <img src={medicalIcon} alt="Medical Icon" />
        <h1>Chat4PCOS</h1>
      </header>
      <div className="chat-container">
        {messages.map((message, index) => (
          <div
            key={index}
            className={`message ${message.type === 'user' ? 'user-message' : 'bot-message'}`}
          >
            {message.text}
          </div>
        ))}
      </div>
      <form className="input-container" onSubmit={handleSubmit}>
        <input
          type="text"
          value={query}
          onChange={(e) => setQuery(e.target.value)}
          placeholder="Ask me anything about PCOS"
        />
        <button type="submit">
          Send
        </button>
      </form>
    </div>
  );
}

export default App;