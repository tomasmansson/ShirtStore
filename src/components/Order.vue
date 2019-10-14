<script>
export default{
  data(){
    return{
      orderData:{
        orderid:'',
        userid: '',
        date: '',
        price: '',
        discount: ''
      },
      setOrderId(orderid){
        this.orderData.orderid = orderid;
      },
      setUserId(userid){
        this.orderData.userid = userid;
      },
      setDate(date){
        this.orderData.date = date;
      },
      setPrice(price){
        this.orderData.price = price;
      },
      setDiscount(discount){
        this.orderData.discount = discount;
      },
    }
  }
}
</script>