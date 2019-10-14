<script>
export default {
  data(){
    return {
      tShirt: {
        text: '',
        textsize: '',
        colour: '',
        material: '',
        size: '',
        textcolour: '',
        bold: '',
        cursive: '',
        font: '',
        img: '',
        imgsize: ''
      },
      setSize(size){
        this.tShirt.size = size;
      },
      setTextSize(textsize){
        this.tShirt.textsize = textsize;
      },
      setcolour(colour){
        this.tShirt.colour = colour;
      },
      setMaterial(material){
        this.tShirt.material = material;
      },
      setTextColour(tcolour){
        this.tShirt.tcolour = tcolour;
      },
      setBold(bold){
        this.tShirt.bold = bold;
      },
      setCursive(cursive){
        this.tShirt.cursive = cursive;
      },
      setFont(font){
        this.tShirt.font = font;
      },
      setImg(img){
        this.tShirt.img = img;
      },
      setImgSize(imgsize){
        this.tShirt.imgsize = imgsize
      },
    }
  }
}
</script>