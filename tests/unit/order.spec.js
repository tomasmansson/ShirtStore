describe('Shop.vue', () => {
    test('TD09 After ordering a confirmation should be shown', () => {
      const wrapper = mount(orderConfirmation)
      wrapper.vm.addToorderConfirmation('Purchase ... done!')
  
    })

})