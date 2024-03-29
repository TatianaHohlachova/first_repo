#Page Object Model
class LoginPage:
    def __init__(self, okno_przegladarki):
        self.driver = okno_przegladarki
        self.address = 'https://www.saucedemo.com/'
        self.username_field_id = 'user-name'
        self.password_field_id = 'password'
        self.login_button_name = 'login-button'

    def open(self):
        self.driver.get(self.address)

    def enter_username(self, username):
        field = self.driver.find_element('id',self.username_field_id)
        field.clear()
        field.send_keys(username)

    def enter_password(self, password):
        field = self.driver.find_element('id', self.password_field_id)
        field.send_keys(password)

    def click_login(self):
        button = self.driver.find_element('id', self.login_button_name)
        button.click()

