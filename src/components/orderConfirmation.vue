<script>
export default{
  data(){
    return{
      paymentData:{
        cardnumber:'',
        xpdate: '',
        cvc: '',
        personnr: '',
        address: '',
      },
      setCardNumber(cardnumber){
        this.paymentData.cardnumber = cardnumber;
      },
      setXpDate(xpdate){
        this.paymentdata.xpdate = xpdate;
      },
      setCVC(cvc){
        this.paymentData.cvc = cvc;
      },
      setPersonNr(personnr){
        this.paymentData.personnr = personnr;
      },
      setAddress(address){
        this.paymentData.address = address;
      },
    }
  }
}
</script>