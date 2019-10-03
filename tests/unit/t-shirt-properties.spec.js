// import goes here
// import { shallowMount } from '@vue/test-utils'
// import HelloWorld from '@/components/HelloWorld.vue'
// import Shop from '@/components/Shop.vue'

describe('Shop.vue', () => {
  test('choose size: 52', () => {
    const wrapper = mount(tShirtConfig)
    wrapper.chooseSize('52')
    expect(wrapper.vm.tShirt()).toContain('52')

  })
  test('choose colour: green', () => {
    const wrapper = mount(tShirtConfig)
    wrapper.chooseColour('green')
    expect(wrapper.vm.tShirt()).toContain('green')

  })

  test('add text: blue balls', () => {
    const wrapper = mount(tShirtConfig)
    wrapper.addText('blue balls')
    expect(wrapper.vm.tShirt()).toContain('blue balls')
  })

})
