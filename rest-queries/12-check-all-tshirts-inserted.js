module.exports = ({ assert, response, store }) => ({
  path: 'tshirts',
  method: 'get',
  test() {
    assert.equal(response.length, store.mockTshirts.length);
    assert.deepEqual(response, store.mockTshirts);
  }
});