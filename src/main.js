import Vue from 'vue'
import Router from 'vue-router'
import TShirt from './views/TShirt.vue'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'tshirt',
      component: TShirt
    }
  ]
})