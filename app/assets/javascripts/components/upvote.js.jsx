var Upvote = React.createClass({
  getInitialState: function() {
    return {
      voucher: this.props.voucher
    }
  },

  render: function() {
    var divClasses = classNames ({
      "voucher-upvote": true,
      "voucher-upvote-upvoted": this.state.voucher.up_voted
    });

    return (
      <div className={divClasses} onClick={this.upvote}>
        <div className="voucher-arrow"></div>
        <div className="voucher-count">
          {this.state.voucher.up_votes}
        </div>
      </div>
    );
  },

  upvote: function() {
    // AJAX request to store vote
    var voucher = this
    $.ajax({
      type: 'POST',
      url: Routes.upvote_voucher_path(this.props.voucher.id, { format: 'json' }),
      success: function(data) {
        voucher.setState({ voucher: data})
      },
      error: function() {
        var userError = "You must be signed-in to vote on posts";
        alert(userError);
      }
    });
  }
});
