var VoucherListItem = React.createClass({
  render: function() {
    return (
      <div className="voucher">
        <div className="voucher-controls">
          <div className="voucher-control">
            <div className="user-badge-container ">
              <img src={'http://www.iconsfind.com/wp-content/uploads/2015/08/20150831_55e46ad551392.png'} className="avatar"/>
            </div>
          </div>
        </div>
        <div className="voucher-body">
          <h3>
            <a href={this.props.voucher.url} target="_blank">{this.props.voucher.title}</a>
          </h3>
          <p>{this.props.voucher.description}</p>
        </div>
        <div className="voucher-upvote">
          <Upvote voucher={this.props.voucher} />
        </div>
      </div>
    );
  }
});
