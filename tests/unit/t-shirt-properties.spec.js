// import goes here
// import { shallowMount } from '@vue/test-utils'
// import HelloWorld from '@/components/HelloWorld.vue'
// import Shop from '@/components/Shop.vue'

describe('Shop.vue', () => {
  test('choose size 52', () => {
    const wrapper = mount(t-shirt-config)
    wrapper.chooseSize('52')
    expect(wrapper.vm.tShirt()).toContain('52')

  })
})
