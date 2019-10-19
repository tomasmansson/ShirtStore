let api = [


  {
    description: 'Create user',
    request: {
      method: 'post',
      url: '/rest/users',
    }
    body: {
      username: String,
      password: String,
      firstname: String,
      lastname: String,
      address: String,
      postnr: Number,
      city: String,
    }
  }


  {
    description: 'Update user',
    request: {
      method: 'put',
      url: '/rest/users/:userid',
      param: ['userid']
    }
    body: {
      password: String,
      firstname: String,
      lastname: String,
      address: String,
      postnr: Number,
      city: String,
    }
  }


  {
    description: 'Get one order using its id',
    request: {
      method: 'get',
      url: '/rest/orders/:orderid',
      params: ['orderid']
    }
    response: {
      content: {
        orderid: Number,
        userid: Number,
        date: String,
        price: Number,
        discount: String,
        delivered: Boolean,
      }
    }
  }


  {
    description: 'Get all order',
    request: {
      method: 'get',
      url: '/rest/orders'
    }
    response: {
      content: [
        {
          orderid: Number,
          userid: Number,
          date: String,
          price: Number,
          discount: String,
          delivered: Boolean,
        }
      ]
    }
  }


  {
    description: 'Create one order',
    request: {
      method: 'post',
      url: '/rest/orders',
      body: {
        userid: String,
        price: Number,
        discount: String,
      }
    }
    response: {
      statusCode: Number,
      error: Object
    }
  }


  {
    description: 'Create one tshirt',
    request: {
      method: 'post',
      url: '/rest/tshirts/:new',
      params: ['new']
      body: {
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
        sharable: Boolean,
      }
    }
    response: {
      statusCode: Number,
      error: Object
    }
  }


  {
  description: 'Delete one tshirt',
  request: {
    method: 'delete',
    url: '/rest/tshirts/:orderid',
    params: ['orderid']
    }
  response: {
    statusCode: Number,
    error: Object
    }
  }


  {
    description: 'update order',
    request: {
      method: 'put',
      url: '/rest/orders/:orderid.
      params: ['orderid']
    }
    body: {
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
      sharable: Boolean,
    }
    response: {
      statuscode: Number,
      error: Object
    }
  }


  {
    description: 'get one product created by another customer',
    request: {
      method: 'get',
      url: '/rest/tshirtids/:tshirtid
      params: ['thshirtid']
    }
    response: {
      content: {
        tshirtid: Number,
        text: String,
        textsize: Number,
        colour: String,
        material: String,
        size: String,
        model: String,
        textcolour: String,
        bold: String,
        cursive: String,
        font: String,
        img: String,
        imgsize: Number,
        sharable:Boolean,
      }
    }
  }


]