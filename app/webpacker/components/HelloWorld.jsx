import React from "react"
import PropTypes from "prop-types"
class HelloWorld extends React.Component {

  constructor(props) {
    super(props);
    this.state = {
      blatext: ""
    };
    this.handleChange = this.handleChange.bind(this);
  }

  handleChange(event) {
    console.log(event.target.value);
    this.setState({
      blatext: event.target.value
    });
  }

  render () {
    return (
      <React.Fragment>
        <p>test</p>
        <input id='b' 
                    defaultValue = {this.state.blatext}
                    placeholder='ff'  />
        Greeting: {this.props.greeting}
        <input name='appointment_date' 
                    placeholder='ff' 
                    onChange={this.handleChange} />
        Greeting: {this.props.greeting}
      </React.Fragment>
    );
  }
}

HelloWorld.propTypes = {
  greeting: PropTypes.string
};
export default HelloWorld
