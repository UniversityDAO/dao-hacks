import React, { useState } from "react";

import TokenArtifact from "../contracts/UDAOToken.json";

export function Dashboard(props) {
    const [funds, setFunds] = useState("");
    const [hash, setHash] = useState("");

    function handleSubmit(e) {
      e.preventDefault();
      console.log("clicked")

      //contract.createProposal(hash, fundAmount);
      
    }

    function handleAmountChange(e) {
      setFunds(e.target.value);
    }

    function handleHashChange(e) {
      setHash(e.target.value);
    }

    return (
        <div className="container">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title">Current Proposals</h3>
                </div>
                <div class="panel-body">
                    Panel content
                </div>
            </div>

            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title">Submit Proposal</h3>
                </div>
                <div class="panel-body">
                    <form>
                        <div class="form-group">
                            <label for="daoFundsInput">Requested Funds</label>
                            <input type="number" class="form-control" id="daoFundsInput" aria-describedby="emailHelp" placeholder="10" onChange={handleAmountChange} value={funds} />
                        </div>
                        <div class="form-group">
                            <label for="fileHash">IPFS File Hash</label>
                            <input type="text" class="form-control" id="exampleInputPassword1" placeholder="afybeiakrdnshrj2bfqw4hwvz48jdy46aztkwnl4vmjjs7cxhbux09mgbu" onChange={handleHashChange} value={hash}/>
                        </div>
                        <button type="submit" class="btn btn-primary" onClick={handleSubmit} >Submit</button>
                    </form>
                </div>
            </div>

            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title">Your Proposals</h3>
                </div>
                <div class="panel-body">
                    Panel content
                </div>
            </div>
        </div>
    );
}
