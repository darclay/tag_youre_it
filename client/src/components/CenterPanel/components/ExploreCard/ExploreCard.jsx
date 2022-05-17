import './ExploreCard.css'

export default function ExploreCard(props) {
  return (
    <div key={props.index} className="ExploreCard">
      <img className="tagImg" src={props.tag.tagImg} alt="tag"/>
      <p className="tagName">{props.tag.tagName}</p>
    </div>
  )
}