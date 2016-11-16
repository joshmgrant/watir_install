module WatirFramework
  class Home < WatirDrops::PageObject

    element(:search_term) { browser.text_field(name: 'q')}
    element(:submit) { browser.button(name: 'btnG') }

    page_url { 'https://www.google.com' }

    def search(data)
      fill_form(data)
      submit.click
    end

  end
end
