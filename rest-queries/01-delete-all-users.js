module.exports = ({ expect, response }) => ({
  path: 'users',
  method: 'delete',
  test() {
    expect(response.warningCount).to.equal(0);
  }
});