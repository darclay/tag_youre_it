import logo from './logo.svg';
import './App.css';
import PostCard from './components/CenterPanel/components/PostCard/PostCard'
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom'

export default function App() {
  return (
   
      <div className="App">
        <Router>
          <Routes>
            <Route path="/" element=""/>
            <Route path="/postCard" element={<PostCard />} />
          </Routes>
        </Router>
      </div>
  )
}