export default function PostCard() {
  
  
  return (
    <div className="PostCard">
      <div className="postContainer">
        <div className="userLeft"></div>
        <div className="postContent"></div>
        <div className="tagRight"></div>
        <div className="joinContainer">
          <button>Join Now</button>
          <div className="thoseJoined">
            <p>5 People joined</p>
            <ul>
              <li><img src="#" alt="joined member" />pic</li>
              <li><img src="#" alt="joined member" />pic</li>
              <li><img src="#" alt="joined member" />pic</li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  )
}