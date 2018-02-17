# Register Confirmation  Page
class RegisterconfirmationPage < ShoppingRootPage
  add_id_element(:div, /Your registration completed/, class: 'result')

  def create_elements; end
end
