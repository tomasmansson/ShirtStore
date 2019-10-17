module.exports = ({ response, store, repeat, i }) => ({
  path: 'orders',
  method: 'post',
  body: store.mockOrders[i],
  test() {
    response.affectedRows.should.equal(1);
    store.mockOrders[i].id = response.insertId;
    if(store.mockOrders[i + 1]){
      repeat();
    }
  }
});