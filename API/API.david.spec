let api = [
 {
   description: 'Get all orders',
   request:{
     method: 'get',
     url: '/orders',
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
   description: 'Get all t-shirt size',
   request:{
     method: 'get',
     url: '/rest/t-shirt/size'
   },
   response:{
     content:[
       {
       size: Number,
       amount: Number,
       }
     ]
   }
 },
 {
   description: 'color',
   request:{
     method: 'get',
     url: '/orders',
     }
   },
   response:{
     color: Number,
     many: Number
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
   description: 'Delete one t-shirt',
   request:{
     method: 'delete',
     url: '/rest/tshirt/:Number',
   },
   response:{
     statusCode: Number,
     error: Object
   }
 }
]