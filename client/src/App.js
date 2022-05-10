import logo from './logo.svg';
import './App.css';
import PostCard from './components/CenterPanel/components/PostCard/PostCard'
import ExploreCard from './components/CenterPanel/components/ExploreCard/ExploreCard'
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom'

export default function App() {
  return (
   
      <div className="App">
        <Router>
          <Routes>
            <Route path="/" element=""/>
            <Route path="/postCard" element={<PostCard />} />
            <Route path="/exploreCard" element={<ExploreCard/>} />
          </Routes>
        </Router>
      </div>
  )
}