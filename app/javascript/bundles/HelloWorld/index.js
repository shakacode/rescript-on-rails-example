import * as React from 'react';

import HelloWorld from './HelloWorld__JsBridge.bs.js';

class App extends React.Component {
  render() {
    return (
      <HelloWorld name />
    )
  }
}

module.exports = App;
