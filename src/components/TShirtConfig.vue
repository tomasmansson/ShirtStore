<script>
export default {
  data(){
    return {
      tShirt: {
        text: '',
        textsize: '',
        colour: '',
        material: '',
        font: '',
        size: '',
        textcolour: '',
        bold: '',
        cursive: '',
        textFont: '',
        img: '',
        imgsize: '',
      },
      addText(text){
        this.tShirt.text = text;
      },
      chooseSize(size){
        this.tShirt.size = size;
      },
      setTextSize(textsize){
        this.tShirt.textsize = textsize;
      },
      chooseColour(colour){
        this.tShirt.colour = colour;
      },
      chooseMaterial(material){
        this.tShirt.material = material;
      },
      setTextColour(tcolour){
        this.tShirt.textcolour = tcolour;
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
        this.tShirt.imgsize = imgsize;
      },
      changeModel(model){
        this.tShirt.model = model;
      }
    }
  }
}
</script>