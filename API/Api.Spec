let api = [
  {
    description: 'Get one order using its id',
    request:{
      method: 'get',
      url: '/rest/order/:id',
      params: ['id']
    },
    response:{
      content:{
        orderid: Number,
        userid: Number,
        date: String,
      }
    }
  },
  {
    description: 'Get all order',
    request:{
      method: 'get',
      url: '/rest/order'
    },
    response:{
      content:[
        {
        orderid: Number,
        userid: Number,
        date: String,
        }
      ]
    }
  },
  {
    description: 'Create one order',
    request:{
      method: 'post',
      url: '/rest/order',
      body:{
        userid: String,
      }
    },
    response:{
      statusCode: Number,
      error: Object
    }
  },
  {
    description: 'Create one tshirt',
    request:{
      method: 'post',
      url: '/rest/tshirt/:new',
      params: ['new']
      body:{
        text: String,
        textsize: Number,
        colour: string,
        material: Number,
        size: String,
        textcolour: String,
        bold: String,
        cursive: String,
        font: Number
        img: String,
        imgsize: String,
      }
    },
    response:{
      statusCode: Number,
      error: Object
    }
  },
  {
    description: 'Delete one tshirt',
    request:{
      method: 'delete',
      url: '/rest/tshirt/:id',
      params: ['id']
    },
    response:{
      statusCode: Number,
      error: Object
    }
  }
]