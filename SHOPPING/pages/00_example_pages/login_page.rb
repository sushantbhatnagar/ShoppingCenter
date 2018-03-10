# Login page
class LoginPage < ShoppingRootPage
  add_id_element(:div, /Welcome, Please Sign In!/i, class: 'page-title')
  add_route(:ShoppingPage, :log_in_button, :fill)

  # TODO: This does not work. Assumption is since the page Register Page is not being hit. To check further...
  # def on_page_load
  #   @email = @ledger.get_value(RegisterPage, :email_text_field)
  #   @password = @ledger.get_value(RegisterPage, :password_text_field)
  # end

  def create_elements
    add_text_field(:email_login, id: 'Email')
    add_text_field(:password_login, id: 'Password')
    add_button(:log_in, element_type: :input, class: 'login-button')
  end

  def input_data(data)
    existing_data = super(data)
    existing_data.merge(login_data)
  end

  def login_data
    {
        email_login_text_field: 'saiseva2@shirdi.com',
        password_login_text_field: 'sairam'
    }
  end
end
