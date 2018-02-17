# Register Page
class RegisterPage < ShoppingRootPage
  add_id_element(:div, /Register/, class: 'page-title')
  add_route(:RegisterconfirmationPage, :register_confirmation_button, :fill)

  def create_elements
    # Radio Button yet to work !
    add_text_field(:first_name, element_type: :input, id:'FirstName')
    add_text_field(:last_name, element_type: :input, id:'LastName')
    add_select_list(:dob_day, id:'DateOfBirthDay')
    add_select_list(:dob_month, id:'DateOfBirthMonth')
    add_select_list(:dob_year, id:'DateOfBirthYear')
    add_text_field(:email, element_type: :input, id:'Email')
    add_text_field(:password, id: 'Password')
    add_text_field(:confirm_password, id: 'ConfirmPassword')
    add_text_field(:company_name, element_type: :input, id: 'Company')
    add_button(:register_confirmation, element_type: :input, id: 'register-button')
  end
end