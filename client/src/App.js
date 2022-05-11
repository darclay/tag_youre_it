import logo from './logo.svg';
import './App.css';
import PostCard from './components/CenterPanel/components/PostCard/PostCard'
import Explore from './components/CenterPanel/components/ExploreContainer/ExploreContainer'
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom'

export default function App() {
  return (
   
      <div className="App">
        <Router>
          <Routes>
            <Route path="/" element=""/>
            <Route path="/postCard" element={<PostCard />} />
            <Route path="/explore" element={<Explore/>} />
          </Routes>
        </Router>
      </div>
  )
}