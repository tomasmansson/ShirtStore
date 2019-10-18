module.exports = ({ response, store, repeat, i }) => ({
  path: 'users',
  method: 'post',
  body: store.mockUsers[i],
  test() {
    response.affectedRows.should.equal(1);
    store.mockUsers[i].id = response.insertId;
    if(store.mockUsers[i + 1]){
      repeat();
    }
  }
});