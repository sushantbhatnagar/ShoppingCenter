# Shopping Page
class ShoppingPage < ShoppingRootPage

  add_id_element(:div, /Welcome to our store/, class: 'topic-block-title')
  # Multiple id elements ? - Balaji
  # how to handle dynamic elements - Balaji
  add_route(:RegisterPage, :register_button)
  add_route(:LoginPage, :login_button)

  def create_elements
    add_button(:register, element_type: :link, class: 'ico-register')
    add_button(:login, element_type: :link, class: 'ico-login')
  end
end
