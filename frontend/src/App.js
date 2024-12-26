import React, { useState } from 'react';
import axios from 'axios';
import './App.css';

function App() {
  const [query, setQuery] = useState('');
  const [response, setResponse] = useState(null);

  const handleSubmit = async (e) => {
    e.preventDefault();
    try {
      const res = await axios.post('http://127.0.0.1:8000/ask', { query });
      setResponse(res.data);
    } catch (error) {
      console.error('Error fetching data:', error);
      setResponse({ error: 'Error fetching data' });
    }
  };

  return (
    <div className="App">
      <header className="App-header">
        <h1>FastAPI Chatbot</h1>
        <form onSubmit={handleSubmit}>
          <input
            type="text"
            value={query}
            onChange={(e) => setQuery(e.target.value)}
            placeholder="Ask me anything about PCOS"
          />
          <button type="submit">Submit</button>
        </form>
        {response && (
          <div className="response">
            <h2>Database Information:</h2>
            <pre>{response.database_information}</pre>
            <h2>AI Model's Response:</h2>
            <pre>{response.ai_model_response}</pre>
          </div>
        )}
      </header>
    </div>
  );
}

export default App;