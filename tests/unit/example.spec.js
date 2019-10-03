// import goes here
// detta är exempel som Thomas gick igenom för receptia-routed-page
import { mount } from '@vue/test-utils'
import App from '@/App.vue'
import Page from '@/views/Page.vue'
import Home from '@/views/Home.vue'
import Cart from '@/views/Cart.vue'


describe('App', () => {
  test('is a Vue instance', () => {
    const wrapper = mount(App)
    expect(wrapper.isVueInstance()).toBeTruthy()
  })
  test('renders template', () => {
    const wrapper = mount(App)
    expect(wrapper.text()).toMatch('RECEPTIA')
  })
})

describe('Page', () => {
  test('is a Vue instance', () => {
    const wrapper = mount(Page)
    expect(wrapper.isVueInstance()).toBeTruthy()
  })
  test('data contains categories', () => {
    const wrapper = mount(Page)
    expect(wrapper.vm.categories).toBeDefined()
  })
})

describe('Cart', () => {
  test('is a Vue instance', () => {
    const wrapper = mount(Cart)
    expect(wrapper.isVueInstance()).toBeTruthy()
  })
  test('cart must have a contents array', () => {
    const wrapper = mount(Cart)
    expect(wrapper.vm.contents).toBeDefined()
  })

  test('add burger to cart', () => {
    const wrapper = mount(Cart)
    wrapper.vm.addToCart('burger')
    expect(wrapper.vm.contents).toContain('burger')
  })
  test('remove burger from cart', () => {
    const wrapper = mount(Cart)
    wrapper.vm.addToCart('burger')
    wrapper.vm.removeFromCart('burger')
    expect(wrapper.vm.contents).not.toContain('burger')
  })
  /*
  test('Change size and color', () => {
    const wrapper = mount(shirtViewer)
    wrapper.vm.shirtModifier('size-52')
    wrapper.vm.shirtModifier('green')
    expect(wrapper.vm.contents).toHaveLength(0)
    expect(wrapper.vm.contents()).toContain('52', 'green') <- ??
  })
  */
  test('fail to place empty order', () => {
    const wrapper = mount(Cart)
    wrapper.vm.placeOrder()
    expect(wrapper.text()).not.toContain('Your order will be done in 5 minutes')
  })
})