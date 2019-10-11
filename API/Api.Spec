let api = [
    {
    description: 'Create user',
    request:{
      method: 'post',
      url: '/rest/user/createuser',
    },
      body:{
        username: String,
        password: String,
        firstname: String,
        lastname: String,
        address: String,
        postnr: Number,
        city: String,
      }
    }
  },
      {
    description: 'Update user',
    request:{
      method: 'put',
      url: '/rest/user/:userid',
      param:['userid']
    },
      body:{
        password: String,
        firstname: String,
        lastname: String,
        address: String,
        postnr: Number,
        city: String,
      }
    }
  },
  {
    description: 'Get one order using its id',
    request:{
      method: 'get',
      url: '/rest/order/:orderid',
      params: ['orderid']
    },
    response:{
      content:{
        orderid: Number,
        userid: Number,
        date: String,
        price: Number,
        discount: String,
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
        price: Number,
        discount: String,
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
        price: Number,
        discount: String,
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
        userid: Number,
        orderid: Number
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
      url: '/rest/tshirt/:orderid',
      params: ['orderid']
    },
    response:{
      statusCode: Number,
      error: Object
    }
  },
  description: 'update order',
  request:{
    method: 'put',
    url: '/rest/order/:orderid.
    params: ['orderid']
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
    statuscode: Number,
    error: Object
  }

]