// Note: Using assert test syntax
module.exports = ({ assert, response, store }) => ({
  path: 'orders',
  method: 'get',
  test() {
   // Check that there are no orders in DB
   assert.deepEqual(response, []);
  },
  setup() {
    // Store the mock orders in the db (setup for next step/query)
    store.mockOrders = require('./mock-orders.json');
  }
});