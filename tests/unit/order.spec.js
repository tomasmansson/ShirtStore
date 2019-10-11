describe('Shop.vue', () => {
  test('TD09 After ordering a confirmation should be shown', () => {
    const wrapper = mount(orderConfirmation)
    wrapper.vm.addToorderConfirmation('Purchase ... done!')
  })

  test('TD20 I pay with card and cardinformation input view is shown', () => {
    const wrapper = mount(orderConfirmation)
    wrapper.changePaymentMethod.card(cardInformation)
    expect(wrapper.text()).toContain('Input Card Number:')
    expect(wrapper.text()).toContain('Expiry date:')
    expect(wrapper.text()).toContain('CVC Code:')
  })

  test('TD21 I pay with invoice and adress input view is shown', () => {
    const wrapper = mount(orderConfirmation)
    wrapper.changePaymentMethod.invoice(invoiceInformation)
    expect(wrapper.text()).toContain('Social security number:')
    expect(wrapper.text()).toContain('Address:')
    expect(wrapper.text()).toContain('Choose payment plan:')
  })

  test('TD22 I order using a discount code and get 10% discount', () => {
    const wrapper = mount(orderConfirmation)
    let discountprice = (price*0.9)
    wrapper.enterDiscountCode('SUPERSALE2019')
    expect(wrapper.vm.order.price()).toEqual(discountprice)

  })
  
  test('TD24 see past orders', () => {
    const wrapper = mount (order)
    wrapper.userHistory('userid')
    expect(wrapper.vm.history()).toMatch('red') //<--- en match behövs
  })


})