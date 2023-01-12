import React, { useState, useEffect, Fragment } from "react";
import Games from "../components/Games";
import Players from "../components/Players";
import LoadingSpinner from "../components/LoadingSpinner";
import ErrorAlert from "../components/ErrorAlert";
import Config from "../services/Config";
import { useParams } from "react-router-dom";

function View() { 

  const [post, setPost] = useState(null);
  const [players, setPlayers] = useState(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(false);
  let params = useParams(); 
  useEffect(() => {
    async function getData() {
      setLoading(true);
      try {
        let response = await fetch(Config.url + "/api/games/api_view/" + params.id);
        let postData = await response.json();
        
        setPost(postData.game);
        setPlayers(postData.players);
         console.log(postData.players);
        setLoading(false);
      } catch (error) {
        console.error("Error fetching /api/games/api_view/" + params.id, error);
        setError(true);
      }
    }

    getData();

    return () => {
      // clean up function
    };
  }, [params.id]);

  if (error)
    return (
      <ErrorAlert details={"api_view with id=" + params.id + " not found"} />
    );
  if (loading) return <LoadingSpinner />;

  
  return (  
    <>
      <Games {...post} key={post.id} /> 
      {players.map((player) => (
        <Players {...player} key={player.id} />
      ))}
    </>
  );
}

export default View;
