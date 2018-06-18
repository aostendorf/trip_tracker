import React, { Component } from 'react';
import './App.css';
import axios from 'axios';
import Trips from './components/Trips';

class App extends Component {
  state = { trips };

  toggleLocations = () => {
    this.setState({ locations: !this.state.location});
  }

  toggleAddress = () => {
    this.setState({ address: !this.state.address});
  }

  render() {
    return(
    <div>
      <Trips />
    </div>
    );
   }
  }



export default App;
