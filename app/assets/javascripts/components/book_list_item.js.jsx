var ProductListItem = React.createClass({
  render: function() {
    return (
      <div className="product">
        <div className="product-upvote">TODO</div>
        <div className="product-body">
          <h3>
            <a href={this.props.product.url} target="_blank">{this.props.product.name}</a>
          </h3>
          <p>{this.props.product.tagline}</p>
        </div>
      </div>
    );
  }
});
