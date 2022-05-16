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
          <div className="topBanner">
            <h4 className="postTitle">Springfield Charity</h4>
            <p className="postLocation">Springfield, NY</p>
            <p className="postTime">1:30pm</p>
          </div>
          <p className="postDate">04/24/2022</p>
          <p className="postDetails">Feugiat orci, magna sed vestibulum euismod velit ac dolor. Senectus nunc, eget morbi justo mi nisi congue. At vestibulum. Feugiat orci, magna sed vestibulum.</p>
        </div>

{/* Top Right Tags */}
        <div className="tagRight">
          <ul className="tagsList">
            <li><img className="tagIcons" src="https://i.imgur.com/dBFN6Yd.png" alt="tag"/></li>
            <li><img className="tagIcons" src="https://i.imgur.com/RGgCa85.png" alt="tag"/></li>
            <li><img className="tagIcons" src="https://i.imgur.com/6gxMnrL.png" alt="tag"/></li>
            <li><img className="tagIcons" src="https://i.imgur.com/n6yvRgi.png" alt="tag"/></li>

          </ul>
        </div>

 {/* Bottom joined banner */}
        <div className="joinContainer">
          <button className="joinButton">Join Now</button>
          <div className="thoseJoined">
            <p>3 People joined</p>
            <ul className="membersList">
              <li><img className="memberIcons first" src="https://i.imgur.com/7hH5dsK.png" alt="joined member" /></li>
              <li><img className="memberIcons second"  src="https://i.imgur.com/CfuyAtJ.png" alt="joined member" /></li>
              <li><img className="memberIcons third"  src="https://i.imgur.com/vnZUCFM.png" alt="joined member" /></li>
            </ul>
          </div>
        </div>
      
      </div>
    </div>
  )
}