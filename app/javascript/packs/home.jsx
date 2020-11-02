import React from "react";
import ReactDOM from "react-dom";
import { Provider } from "react-redux";
import { createStore, applyMiddleware } from "redux";
import rootReducer from "../src/config/redux/reducers";
import logger from "../src/config/middlewares/logger";
import thunk from "redux-thunk";

import Home from "../src/components/Home";

const store = createStore(rootReducer, applyMiddleware(thunk, logger));
const rootElement = document.getElementById("home-panel");
document.addEventListener("DOMContentLoaded", () => {
  ReactDOM.render(
    <Provider store={store}>
      <Home />
    </Provider>,
    rootElement
  );
});
