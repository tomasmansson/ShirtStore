// import goes here
// import { shallowMount } from '@vue/test-utils'
// import HelloWorld from '@/components/HelloWorld.vue'
// import Shop from '@/components/Shop.vue'

describe('Shop.vue', () => {
  test('TD01 choose size: L', () => {
    const wrapper = mount(tShirtConfig)
    wrapper.chooseSize('L')
    expect(wrapper.vm.tShirt.size()).toEqual('L')

  })
  test('TD02 choose colour: green', () => {
    const wrapper = mount(tShirtConfig)
    wrapper.chooseColour('green')
    expect(wrapper.vm.tShirt.colour()).toEqual('green')
  })

  test('TD23 choose material: cotton', () => {
    const wrapper = mount(tShirtConfig)
    wrapper.chooseMaterial('cotton')
    expect(wrapper.vm.tShirt.material()).toEqual('cotton')
  })

  test('TD04 add text: blue balls', () => {
    const wrapper = mount(tShirtConfig)
    wrapper.addText('blue balls')
    expect(wrapper.vm.tShirt.text()).toEqual('blue balls')
  })

  test('TD12/TD04 change text size', () => {
    const wrapper = mount(tShirtConfig)
    wrapper.changeText.size('12')
    expect(wrapper.vm.tShirt.text.size()).toEqual('12')
  })

  test('TD13/TD04 change colour on text', () => {
    const wrapper = mount(tShirtConfig)
    wrapper.changeText.colour('white')
    expect(wrapper.vm.tShirt.text.colour()).toEqual('white')
  })

  test('TD14/TD04 change text to bold and cursive', () => {
    const wrapper = mount(tShirtConfig)
    wrapper.changeText.bold(true)
    wrapper.changeText.cursive(true)
    expect(wrapper.vm.tShirt.text.bold()).toBeTruthy()
    expect(wrapper.vm.tShirt.text.cursive()).toBeTruthy()
  })

  test('TD15/TD04 change font', () => {
    const wrapper = mount(tShirtConfig)
    wrapper.changeText.font('wingdings')
    expect(wrapper.vm.tShirt.text.font()).toEqual('wingdings')
  })
  

  test('TD06 Price is visible during tshirt creation', () => {
    const wrapper = mount(tShirtConfig)
    wrapper.chooseSize('L')
    expect(wrapper.vm.price()).toContain('100sek')
  })

  test('TD05 reviewer reflects changes in realtime', () => {
    const wrapper = mount(realtimeViewer)
    wrapper.vm.addTorealtimeViewer[1]('green')
    expect(wrapper.vm.realtimeViewer()).toEqual('green')
  })

  test('TD17 changing rear as well as front', () => {
    const wrapper = mount (tShirtConfig)
    wrapper.changeViewBack(true)  //<--- stämmer detta?
    wrapper.chooseColour('red')
    expect(wrapper.vm.realtimeViewer()).toMatch('red')
  })

})
