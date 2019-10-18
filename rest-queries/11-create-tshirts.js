module.exports = ({ response, store, repeat, i }) => ({
  path: 'tshirts',
  method: 'post',
  body: store.mockTshirts[i],
  test() {
    response.affectedRows.should.equal(1);
    //if unique id for tshirts is wanted, then it should be inserted here
    if(store.mockTshirts[i + 1]){
      repeat();
    }
  }
});