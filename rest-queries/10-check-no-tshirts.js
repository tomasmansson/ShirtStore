module.exports = ({ assert, response, store }) => ({
  path: 'tshirts',
  method: 'get',
  test() {
   assert.deepEqual(response, []);
  },
  setup() {
    store.mockTshirts = require('./mock-tshirts.json');
    for(let i=0; i<store.mockTshirts.length; i++) {
      store.mockTshirts[i].userid=store.mockUsers[i].id;
      store.mockTshirts[i].orderid=store.mockOrders[i].id;
    }
  }
});