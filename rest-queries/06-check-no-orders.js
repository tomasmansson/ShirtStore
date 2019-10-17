module.exports = ({ assert, response, store }) => ({
  path: 'orders',
  method: 'get',
  test() {
   assert.deepEqual(response, []);
  },
  setup() {
    store.mockOrders = require('./mock-orders.json');
  }
});