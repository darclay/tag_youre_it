import './TopBanner.css'

export default function TopBanner() {
  return (
    <div className="topBannerDiv">
      <div className="searchBar">
        <input type="text" placeholder="Search Tags"/>
      </div>
      <div className="topBannerIconsContainer">
        <ul className="topBannerIcons">
          <li>
            <img src="#" alt="message icon" />
          </li>
          <li><img src="#" alt="settings icon" /></li>
        </ul>
      </div>
    </div>

  )
}