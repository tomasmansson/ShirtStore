module.exports = ({ response, store, repeat, i }) => ({
  path: 'tshirtids',
  method: 'post',
  body: store.mockTshirtids[i],
  test() {
    response.affectedRows.should.equal(1);
    store.mockTshirtids[i].tshirtid = response.insertId;
    if(store.mockTshirtids[i + 1]){
      repeat();
    }
  }
});