module.exports = ({ assert, response, store }) => ({
  path: 'users',
  method: 'get',
  test() {
    assert.equal(response.length, store.mockUsers.length);
    assert.deepEqual(response, store.mockUsers);
  }
});