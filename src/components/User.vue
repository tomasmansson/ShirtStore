<script>
export default{
  data(){
    return{
      userData:{
        userid: '',
        username:'',
        password:'',
        firstname:'',
        lastname:'',
        adress:'',
        postnr:'',
        city:'',
      },
      setUserName(name){
        this.userData.username = name;
      },
      setPassword(password){
        this.userData.password = password;
      },
      setFirstName(name){
        this.userData.firstname = firstname;
      },
      SetLastName(lastname){
        this.userData.lastname = latname;
      },
      setAdress(adress){
        this.userData.adress = adress;
      },
      setPostnr(postnr){
        this.userData.postnr = postnr;
      },
      setCity(city){
        this.userData.city = city;
      },
    }
  }
}
</script>