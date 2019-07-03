import React, { Component } from 'react';

import Transition from 'react-transition-group/Transition';

import '../css/App.css';

class TransitionComp extends Component{

    state = {
        show:true
    }

    showDiv = () =>{
        this.setState({
            show:!this.state.show ? true : false
        })
    }
    render(){
        return(
            <div>
                {/* {this.state.show ?<div style={{
                    background:'red',
                    height:'100px'
                }}></div> 
                : null} */}
                <Transition 
                    in = {this.state.show}
                    timeout={{
                        enter:2000,
                        exit:2000
                    }}
                    enter= {true}
                    exit={true}
                    // mountOnEnter 
                    // unmountOnExit
                    onEnter = { (node) => {
                        console.log('Enter')
                    }}
                    onExit = { (node) => {
                        console.log('Exited')
                    }}
                >
                { state => 
                    // <div style={{
                    //     background:'red',
                    //     height:'100px',
                    //     transition:'all 2s',
                    //     opacity: state === 'exited' || state === 'exiting' ? 0 : 1
                    // }}> { state }</div>
                    <div className={`square square-${state}`}> { `square square-${state}` }</div>
                }
                </Transition>

                <div className="showDiv"
                    onClick={this.showDiv}>
                {/* Show or Hide */}

                { this.state.show === true ? 'Hide' : 'Show' }
                </div>
            </div>    
        )
    }
}


export default TransitionComp;