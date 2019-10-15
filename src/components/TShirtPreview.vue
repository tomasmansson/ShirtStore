<template>
  <div class="preview">

  </div>
</template>
<style>
  .preview{
    background-color:#ffffff;
    min-height:100vh;
  }
</style>
<script>
export default{
  data(){
    return{
      viewData:{
        view:'',
      },
      setView(view){
        this.viewData.view = view;
      },
    }
  }
}
</script>