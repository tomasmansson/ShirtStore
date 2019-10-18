module.exports = ({ assert, response, store }) => ({
  path: 'tshirtids',
  method: 'get',
  test() {
    assert.equal(response.length, store.mockTshirtids.length);
    assert.deepEqual(response, store.mockTshirtids);
  }
});