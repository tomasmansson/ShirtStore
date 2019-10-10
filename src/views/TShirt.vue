<template>
  <div class="row">
    <TShirtConfig class="col-6"></TShirtConfig>
    <TShirtPreview class="col-6"></TShirtPreview>
  </div>
</template>
<script>
  import TShirtConfig from '@/components/TShirtConfig.vue'
  import TShirtPreview from '@/components/TShirtPreview.vue'
  export default {
    components:{
      TShirtConfig,
      TShirtPreview
    }
  }
</script>