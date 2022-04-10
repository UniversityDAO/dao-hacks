import React from "react";

//import { NetworkErrorMessage } from "./NetworkErrorMessage";

export function Dashboard() {
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
                            <input type="number" class="form-control" id="daoFundsInput" aria-describedby="emailHelp" placeholder="10"/>
                        </div>
                        <div class="form-group">
                            <label for="fileHash">IPFS File Hash</label>
                            <input type="text" class="form-control" id="exampleInputPassword1" placeholder="afybeiakrdnshrj2bfqw4hwvz48jdy46aztkwnl4vmjjs7cxhbux09mgbu"/>
                        </div>
                        <button type="submit" class="btn btn-primary">Submit</button>
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
