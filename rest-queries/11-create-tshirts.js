module.exports = ({ response, store, repeat, i }) => ({
  path: 'tshirts',
  method: 'post',
  body: store.mockTshirts[i],
  test() {
    response.affectedRows.should.equal(1);
    store.mockTshirts[i].tshirtid = response.insertId;
    if(store.mockTshirts[i + 1]){
      repeat();
    }
  }
});