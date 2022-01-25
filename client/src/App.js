import './App.css';
import Home from "./Components/Home.js"
import {BrowserRouter as Router, Routes, Route} from "react-router-dom"

function App() {
  return (
    <div className="App">
      <Router basename="/index.html">
        <Routes>
          <Route path="/" component={<Home/>}/>
        </Routes>
      </Router>
    </div>
  );
}

export default App;
