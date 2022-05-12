import ExploreCard from '../ExploreCard/ExploreCard'
import './ExploreContainer.css'

export default function ExploreContainer() {
  const tags = [
    {
      tagImg: "https://i.imgur.com/oWEgkdg.png",
      tagName: "CHARITY" 
    },
    {
      tagImg: "https://i.imgur.com/uF69MzL.png",
      tagName: "ANIMAL CARE"
    },
    {
      tagImg: "https://i.imgur.com/xJm1hAM.png",
      tagName: "PROJECTS & REPAIRS"
    },
    {
      tagImg: "https://i.imgur.com/3bUc7e3.png",
      tagName: "ERRANDS"
    },
    {
      tagImg: "https://i.imgur.com/6xoPOLy.png",
      tagName: "COMMUNITY CLEAN-UP"
    },
    {
      tagImg: "https://i.imgur.com/pspXjHr.png",
      tagName: "YOUTH OUTREACH"  
    },
    {
      tagImg: "https://i.imgur.com/zS6a6UN.png",
      tagName: "AID HOMELESS"
    }
  ]
  return (
    <div className="ExploreContainerDiv">
       <h1 className="exploreTitle">EXPLORE TAGS</h1>
       <div className="exploreFlexContainer">
         <ExploreCard tags ={tags}/> 
       </div>
     </div>
  )
}