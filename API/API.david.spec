let api = [
 {
   description: 'Get all orders',
   request:{
     method: 'get',
     url: '/Order',
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
   description: 'Get all tshirt size',
   request:{
     method: 'get',
     url: '/rest/tshirt/size'
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
     url: '/tshirt/colour',
     }
   },
   response:{
     color: Number,
   }
 },
 {
   description: 'Delete one t-shirt',
   request:{
     method: 'delete',
     url: '/tshirt/:orderid',
   },
   response:{
     statusCode: Number,
     error: Object
   }
 }
]