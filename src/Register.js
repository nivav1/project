import * as React from "react";
import "./App.css";

function Register() {
  return (
    <div className="Register">
      <h1>Register : </h1> <br />
      <h3>Username:</h3> <input id="Username" /> <br />
      <h3>Password: </h3> <input id="Password" /> <br />
      <button>submit</button>
    </div>
  );
}

export default Register;
