module WatirFramework
  class Home < WatirDrops::PageObject

    element(:signup) { browser.text_field(name: 'q')}
    element(:submit) { browser.button(name: 'btnG') }

    page_url { 'https://www.google.com' }

    def search(string)
      self.signup = string
      submit.click
    end

  end
end
