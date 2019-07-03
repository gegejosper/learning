import React, { Component } from 'react';

import UserTemplate from './user_template';


class User extends Component {
    
    state = {
        name:'Francis',
        lastname: 'Jones',
        age:29,
        hobbies:['run', 'jump'],
        language:false,
        message(){console.log('hey')},
        car:{brand:'Ford', model:'focus'},
        mother:'Jane',
        color:'blue'


    }
    changeColor() {
        // this.setState({
        //     color:'red'
        // })

        this.refs.myColor.style.color = 'red';
    }
    render() {
        const style = {
            color:this.state.color
        }
        return (
            <div>
                {/* ... works for passing states into child components */}
                <h4 style={style} ref="myColor">{this.state.mother}</h4>

                <div onClick={() => this.changeColor()}>Change Color</div>
                <UserTemplate {...this.state} />
            </div>
        );
    }
}

export default User;