import React from "react";  
import S from '../assets/images/S.png';
import H from '../assets/images/H.png';
import C from '../assets/images/C.png';
import D from '../assets/images/D.png';

function Cards(card) {  
  let image = '';
  if(card[0] === 'S') {
    image = S;
  }
  if(card[0] === 'H') {
    image = H;
  }
  if(card[0] === 'C') {
    image = C;
  }
  if(card[0] === 'D') {
    image = D;
  }
  return (
    <div className="col-12 col-md-12 col-lg-12">
      <div className="card mb-4 shadow">
        <div className="card-body card-text"> 
          <img src={image}  alt="Image1" className="image-icon"/>
          {card[1]}
        </div> 
      </div>
    </div>
  );
}

export default Cards;
