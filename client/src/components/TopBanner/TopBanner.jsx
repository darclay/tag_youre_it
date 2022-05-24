import './TopBanner.css'
import messageIcon from '../../assets/icons/messageIconColored.png'
import settingsIcon from '../../assets/icons/settingsIconColored.png'

export default function TopBanner() {
  return (
    <div className="topBannerDiv">
      <div className="searchBar">
        <input type="text" placeholder="Search Tags"/>
      </div>
      <div className="topBannerIconsContainer">
        <ul className="topBannerIcons">
          <li>
            <img src={messageIcon} alt="message icon" />
          </li>
          <li><img src={settingsIcon} alt="settings icon" /></li>
        </ul>
      </div>
    </div>

  )
}