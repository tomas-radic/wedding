module HomeHelper
  def home_invitation_col_element(order_nr)
    if order_nr.odd?
      col_classes = 'col-md-6 border-right border-primary mb-5'
      text_classes = 'text-center text-md-right mr-md-3 mb-4 mb-md-0'
    else
      col_classes = 'col-md-6 mb-5'
      text_classes = 'text-center text-md-left ml-md-3'
    end

    content_tag :div, class: col_classes do
      content_tag :div, class: text_classes do
        yield
      end
    end
  end
end
