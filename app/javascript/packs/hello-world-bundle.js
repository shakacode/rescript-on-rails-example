import ReactOnRails from 'react-on-rails';

import HelloWorld from '../bundles/HelloWorld/HelloWorld__JsBridge.bs.js';

// This is how react_on_rails can see the HelloWorld in the browser.
ReactOnRails.register({
  HelloWorld,
});
