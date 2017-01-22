var VoucherList = React.createClass({
  render: function(){
    return (
      <div>
        {this.props.vouchers.map(function(voucher){
          return <VoucherListItem voucher={voucher} key={voucher.id} />;
        })}
      </div>
    );
  }
});
