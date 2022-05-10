import './PostCard.css'
export default function PostCard() {
  
  
  return (
    <div className="PostCard">
      <div className="postContainer">

{/* User Profile on top left */}
        <div className="userLeft">
          <img className="userPic" src="https://i.imgur.com/m1d3In5.png" alt="user profile pic"/>
          <p className="userName">Rafael</p>
        </div>

{/* Post Content */}
        <div className="postContent">
          <h3 className="postTitle">Springfield Charity</h3>
          <p className="postLocation">Springfield, NY</p>
          <p className="postTime">1:30pm</p>
          <p className="postDate">04/24/2022</p>
          <p className="postDetails">Feugiat orci, magna sed vestibulum euismod velit ac dolor. Senectus nunc, eget morbi justo mi nisi congue. At vestibulum. Feugiat orci, magna sed vestibulum.</p>
        </div>

{/* Top Right Tags */}
        <div className="tagRight">
          <ul>
            <li><img className="tagIcons" src="https://i.imgur.com/dBFN6Yd.png" alt="tag"/></li>
            <li><img className="tagIcons" src="https://i.imgur.com/RGgCa85.png" alt="tag"/></li>
            <li><img className="tagIcons" src="https://i.imgur.com/6gxMnrL.png" alt="tag"/></li>
            <li><img className="tagIcons" src="https://i.imgur.com/n6yvRgi.png" alt="tag"/></li>

          </ul>
        </div>

 {/* Bottom joined banner */}
        <div className="joinContainer">
          <button>Join Now</button>
          <div className="thoseJoined">
            <p>3 People joined</p>
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