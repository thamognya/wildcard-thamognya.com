import React from 'react';
import logo from './logo.svg';
import './app-css/App.css';

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <p>
            Welcome to my website.
        </p>
        <a
          className="App-link"
          href="https://blog.thamognya.com"
          target="_blank"
          rel="noopener noreferrer"
        >
          Blog
        </a>
      </header>
    </div>
  );
}

export default App;
