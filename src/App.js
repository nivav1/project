import React, { Component } from 'react';
import Register from './Register';
import './App.css';

class App extends Component {
  render() {
    return (
      <div className="App">
        <h1>Welcome!</h1>
        <hr />
        <Register />
      </div>
    );
  }
}

export default App;
