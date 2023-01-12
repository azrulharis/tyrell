import React from "react";
import { Link } from "react-router-dom";

function Games({ name, total_player, id }) {
  return (
    <div className="col-12 col-md-12 col-lg-12">
      <div className="card mb-4 shadow">
        <div className="card-body card-text">
          <Link to={"/view/" + id}>{name}</Link>
        </div>
        <div className="card-footer small text-muted text-end">Total Player: {total_player}</div>
      </div>
    </div>
  );
}

export default Games;
