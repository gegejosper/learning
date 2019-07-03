import React from 'react';

import PropTypes from 'prop-types';

const UserTemplate = (props) => {
    // console.log(props);
    return (
        <div>
            Template
        </div>
    );
};

UserTemplate.propTypes = {
    // name:PropTypes.oneOf(['Francis', 'Steve']),
    name:PropTypes.oneOfType([
        PropTypes.string,
        PropTypes.number,
        PropTypes.oneOf(['Francis', 'Steve'])
    ]),
    lastname:PropTypes.string,
    age:PropTypes.number,
    // hobbies:PropTypes.array,
    hobbies:PropTypes.arrayOf(PropTypes.string),
    spanish:PropTypes.oneOfType([
        PropTypes.bool,
    ]),
    
    message:PropTypes.func,
    car:PropTypes.object
}
export default UserTemplate;