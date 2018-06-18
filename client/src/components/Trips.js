import React from 'react';
import axios from 'axios';
import Locations from './Locations';
import Address from './Address';

class Trips extends React.Component {
  state = {locations: [], address: []}

  componentDidMount() {
    axios.get('/api/')
  }

  render() {
    return(
      <div>
        <h1>Trips</h1>
      </div>
    )
  }
}

export default Trips;

