module.exports = ({ assert, response, store }) => ({
  path: 'users',
  method: 'get',
  test() {
   assert.deepEqual(response, []);
  },
  setup() {
    store.mockUsers = require('./mock-users.json');
  }
});