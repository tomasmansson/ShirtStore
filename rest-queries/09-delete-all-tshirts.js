module.exports = ({ expect, response }) => ({
  path: 'tshirts',
  method: 'delete',
  test() {
    expect(response.warningCount).to.equal(0);
  }
});