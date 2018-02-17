# Shopping Page
class ShoppingPage < ShoppingRootPage

  add_id_element(:div, /Welcome to our store/, class: 'topic-block-title')
  # Multiple id elements ? - Balaji
  # how to handle dynamic elements - Balaji
  add_route(:RegisterPage, :register_button)

  def create_elements
    add_button(:register, element_type: :link, class: 'ico-register')
  end
end
