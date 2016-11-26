module WatirFramework
  class Results < WatirDrops::PageObject

    elements(:results) { browser.divs(class: 'g') }
    element(:title) { |element| element.h3 }

    def first_result
      title(results.first).text
    end

  end
end
