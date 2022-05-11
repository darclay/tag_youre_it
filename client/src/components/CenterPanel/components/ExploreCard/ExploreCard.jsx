import './ExploreCard.css'

export default function ExploreCard(props) {
  const tagsArray = props.tags
  console.log(tagsArray)
  
  return (
  tagsArray.map((tag, index)=>(
    <div key={index} className="ExploreCard" onClick={()=>{console.log('clicked')}}>
      <img className="tagImg" src={tag.tagImg} alt="tag"/>
      <p className="tagName">{tag.tagName}</p>
    </div>
  )) 
  )
}