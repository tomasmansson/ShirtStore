module.exports = ({ assert, response, store }) => ({
  path: 'orders',
  method: 'get',
  test() {
   assert.deepEqual(response, []);
  },
  setup() {
    store.mockOrders = require('./mock-orders.json');
    for(let i=0; i<store.mockOrders.length; i++) {
      store.mockOrders[i].userid=store.mockUsers[i].userid;
    }
  }
});