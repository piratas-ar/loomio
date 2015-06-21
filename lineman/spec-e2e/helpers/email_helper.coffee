module.exports = new class EmailHelper
  openLastEmail: ->
    browser.driver.get('http://localhost:8000/development/last_email')
    browser.driver.sleep(10)

  lastEmailSubject: ->
    browser.driver.findElement(By.css('.email-subject'))

  firstLink: ->
    browser.driver.findElement(By.css('a')).click()

  clickFirstLink: ->
    @firstLink().click()

