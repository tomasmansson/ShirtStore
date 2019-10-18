module.exports = ({ expect, response }) => ({
  path: 'tshirtids',
  method: 'delete',
  test() {
    expect(response.warningCount).to.equal(0);
  }
});