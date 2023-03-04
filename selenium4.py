import time

from selenium import webdriver
from selenium3 import LoginPage

driver = webdriver.Chrome()
page = LoginPage(driver)
page.open()
page.enter_username('standard_user')
page.enter_password('secret-sauce')
page.click_login()
time.sleep(10)
