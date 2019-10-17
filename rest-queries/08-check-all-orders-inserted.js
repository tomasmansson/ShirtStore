module.exports = ({ assert, response, store }) => ({
  path: 'orders',
  method: 'get',
  test() {
    assert.equal(response.length, store.mockOrders.length);
    assert.deepEqual(response, store.mockOrders);
  }
});