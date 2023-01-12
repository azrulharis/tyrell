import React from "react";
import { Link } from "react-router-dom";
import Cards from "../components/Cards";

function Players(player) {
  console.log(player.cards);
  return (
    <div className="col-3 col-md-3 col-lg-3">
      <div className="card mb-3 shadow">
        <div className="card-body card-text">
          {player.cards.map((card, index) => (
            <Cards {...card} key={index} />
          ))} 
        </div>
        <div className="card-footer small text-muted">{player.name}</div>
      </div>
    </div>
  );
} 

export default Players; 