module.exports = ({ expect, response }) => ({
  path: 'orders',
  method: 'delete',
  test() {
    expect(response.warningCount).to.equal(0);
  }
});