<script>
export default{
  data(){
    return{
      orderData:{
        firstName:'',
        tShirt:{}
      },
      setFirstName(name){
        this.orderData.firstName = name;
      },
      setTShirt(tShirt){
        this.orderData.tShirt = tShirt;
      }
    }
  }
}
</script>