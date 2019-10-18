module.exports = ({ assert, response, store }) => ({
  path: 'tshirtids',
  method: 'get',
  test() {
   assert.deepEqual(response, []);
  },
  setup() {
    store.mockTshirtids = require('./mock-tshirtids.json');
    for(let i=0; i<store.mockTshirtids.length; i++) {
    }
  }
});