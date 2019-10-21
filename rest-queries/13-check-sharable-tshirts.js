module.exports = ({ response }) => ({
  path: 'otherstshirts',
  method: 'get',
  test() {
    response.length.should.equal(3)
  }
});