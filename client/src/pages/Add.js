import React, { useState } from "react";
import { Navigate, useNavigate } from "react-router-dom";
import ErrorAlert from "../components/ErrorAlert";
import Config from "../services/Config";


function Add() {
  const [total_player, setPlayer] = useState("");
  const [success, setSuccess] = useState(false);
  const [error, setError] = useState(false); 
  const [errorMessage, setErrorMessage] = useState(false);
  const navigate = useNavigate();  

  const handleContentChange = (event) => {
    setPlayer(event.target.value);
  };

  const handleSubmit = async (event) => {
    event.preventDefault();
    try {
      let response = await fetch(Config.url + "/api/games/api_add", {
        method: "POST",
        credentials: "include",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify({
          total_player: total_player,
        }),
      }).then((response) => response.json())
      .then((response) => {
        console.log(response);
        if (response.ok === true) { 
          navigate('/view/' + response.game_id);
        } else {
          setError(true);
          setErrorMessage(response.message);
        } 
      }).catch((error) => {
        console.log('E');
      });  
    } catch (error) {
      console.error("Server error while creating a new game", error);
      setError(true);
    }
  };

  if (success) return <Navigate to="/" />;

  return (
    <div className="col-10 col-md-8 col-lg-7">
      {error && <ErrorAlert details={errorMessage} />}
      <form onSubmit={handleSubmit}>
        <div className="input-group">
          <input
            type="text"
            placeholder="Number of player"
            value={total_player}
            className="form-control"
            onChange={handleContentChange}
            autoFocus
          />
          <button type="submit" className="btn btn-primary">
            Save
          </button>
        </div>
      </form>
    </div>
  );
}

export default Add;
