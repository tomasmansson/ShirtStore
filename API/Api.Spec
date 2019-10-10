let api = [
  {
    description: 'Get one animal using its id',
    request:{
      method: 'get',
      url: '/rest/animals/:id',
      params: ['id']
    },
    response:{
      content:{
        id: Number,
        name: String,
        type: String,
        age: Number
      }
    }
  },
  {
    description: 'Get all animals',
    request:{
      method: 'get',
      url: '/rest/animals'
    },
    response:{
      content:[
        {
        id: Number,
        name: String,
        type: String,
        age: Number
        }
      ]
    }
  },
  {
    description: 'Create one animal',
    request:{
      method: 'post',
      url: '/rest/animals',
      body:{
        name: String,
        type: String,
        age: Number
      }
    },
    response:{
      statusCode: Number,
      error: Object
    }
  },
  {
    description: 'Create one animal',
    request:{
      method: 'put',
      url: '/rest/animals/:id',
      params: ['id']
      body:{
        name: String,
        type: String,
        age: Number
      }
    },
    response:{
      statusCode: Number,
      error: Object
    }
  },
  {
    description: 'Delete one animal using its id',
    request:{
      method: 'delete',
      url: '/rest/animals/:id',
      params: ['id']
    },
    response:{
      statusCode: Number,
      error: Object
    }
  }
]