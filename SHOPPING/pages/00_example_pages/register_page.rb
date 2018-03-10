# Registeration Page
class RegisterPage < ShoppingRootPage
  add_id_element(:div, /Register/, class: 'page-title')
  add_route(:RegisterConfirmationPage, :register_confirmation_button, :fill)

  def create_elements
    # Radio Button yet to work !
    #TODO: Use faker gem to get this data randomly
    add_text_field(:first_name, element_type: :input, id:'FirstName')
    add_text_field(:last_name, element_type: :input, id:'LastName')
    add_select_list(:dob_day, name:'DateOfBirthDay')
    add_select_list(:dob_month, name:'DateOfBirthMonth')
    add_select_list(:dob_year, name:'DateOfBirthYear')
    add_text_field(:email, element_type: :input, id:'Email')
    add_text_field(:password, id: 'Password')
    add_text_field(:confirm_password, id: 'ConfirmPassword')
    add_text_field(:company_name, element_type: :input, id: 'Company')
    add_button(:register_confirmation, element_type: :input, id: 'register-button')
  end
end
