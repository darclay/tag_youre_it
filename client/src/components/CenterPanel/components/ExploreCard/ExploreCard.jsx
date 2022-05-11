import './ExploreCard.css'

export default function ExploreCard() {
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
    <div className="ExploreCard" onClick={()=>{console.log('clicked')}}>
      <img className="tagImg" src={tags[0].tagImg} alt="tag"/>
      <p className="tagName">{tags[0].tagName}</p>
    </div>
  )
}
