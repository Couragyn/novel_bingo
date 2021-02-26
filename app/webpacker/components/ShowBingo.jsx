import React from "react"
import PropTypes from "prop-types"
import DefaultBookImage from "/app/webpacker/images/blank.jpg"

class ShowBingo extends React.Component {

  constructor(props) {
    super(props);
    this.state = {
      bingo: props.bingo,
      bingo_squares: props.bingo_squares,
      test_text: "bla"
    };
    this.handleClick = this.handleClick.bind(this);
  }

  componentDidMount() {
    $('#searchBtn').on("click", function(e){
      alert( "Handler for .click() called." );
    });

  }


  render () {
    let BingoCard = (`<h1 class="text-center">${this.props.card.name}</h1>`);

    // BingoCard
    BingoCard += (`<table class="table-responsive table-bordered">`);
    BingoCard += (`<tbody>`);
    this.props.squares.map((square, i) => (
      [0, 5, 10, 15, 20].includes(i) &&  (BingoCard += (`<tr>`)),
      BingoCard += (`
      <div class="content"><td>
      <img src="${DefaultBookImage}">
      <h6 class="text">${square.name}</h6>
      <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modal-${square.id}">View Details</button>
      <div class="modal fade" id="modal-${square.id}" tabindex="-1" role="dialog" aria-labelledby="${square.id}" aria-hidden="true">`),

      // Modal
      BingoCard += (`
              <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
               <div class="modal-content">
                   <div class="modal-header">
                       <h5 class="modal-title" id="${square.id}">${square.name}</h5>
                       <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                           <span aria-hidden="true">&times;</span>
                       </button>
                   </div>
                   <div class="modal-body">

                     <ul class="nav nav-tabs" role="tablist">
                       <li role="presentation" class="list-group-item active">
                         <a href="#book-${square.id}" aria-controls="home" role="tab" data-toggle="tab">Selected Book</a>
                       </li>
                       <li role="presentation" class="list-group-item">
                         <a href="#description-${square.id}" aria-controls="profile" role="tab" data-toggle="tab">Square Description</a>
                       </li>
                     </ul>

                     <div class="tab-content">
                       <div role="tabpanel" class="tab-pane active" id="book-${square.id}">
                       <button id="searchBtn" class="btn btn-primary float-right m-2">Search for book</button>
                       
                       
      `),

      this.state.bingo_squares[i].isbn ?  
        (BingoCard += (`
                        <img class="float-right" src="${DefaultBookImage}">
                      </div>


        `)) :
        (BingoCard += (`
                        <p>Title: -</p>
                        <p>Author: -</p>
                        <p>Description: -</p>
                      </div>
        `)),

      BingoCard += (`
                       <div role="tabpanel" class="tab-pane" id="description-${square.id}">
                           <p><strong>Description: </strong>${square.description}</p>`),
      square.hard &&  (BingoCard += (`<p><strong>Hard Mode: </strong>${square.hard}</p>`)),
      BingoCard += (`
                       </div>
                     </div>

                   </div>
                   <div class="modal-footer">
                       <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button> 
                   </div>          
               </div>
           </div>
       </div>



        </td>
      </div>`),
      [4, 9, 14, 19, 24].includes(i) &&  (BingoCard += (`</tr>`))
    ))
  
    BingoCard += (`</tbody></table>`)

    return (
      <React.Fragment>
          <div dangerouslySetInnerHTML={{ __html: BingoCard }} />
      </React.Fragment>
    );
  }
}
ShowBingo.propTypes = {
};


export default ShowBingo
