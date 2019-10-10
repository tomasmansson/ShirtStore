<template>
  <div>
    <input type="file" @change="callUpload"/>
    <img class="preview-image" :src="file">
  </div>
</template>

<script>

export default {
  name: 'FileUpload',
  data(){
    return{
      file: '',
      upload(file){
        console.log(file);
        this.file = file;
      }
    }
  },
  methods:{
    callUpload(e){
      let file = e.target.files[0]; // array med filer
      let reader = new FileReader();
      reader.readAsDataURL(file);  // läs en fil till detta format
      reader.onload = (e) => { // när filen är läst
        this.upload(e.target.result); // filinnehållet
      }
    }
  }

}
</script>