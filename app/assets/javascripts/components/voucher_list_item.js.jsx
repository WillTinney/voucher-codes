var VoucherListItem = React.createClass({
  render: function() {
    return (
      <div className="voucher">
        <div className="voucher-controls">
          <div className="voucher-control">
            <div className="user-badge-container ">
              <img src={'app/assets/images/user.png'} className="avatar"/>
            </div>
          </div>
        </div>
        <div className="voucher-body">
          <h3>
            <a href={this.props.voucher.url} target="_blank">{this.props.voucher.title}</a>
          </h3>
          <p>{this.props.voucher.description}</p>
        </div>
        <div className="voucher-upvote">TODO</div>
      </div>
    );
  }
});
