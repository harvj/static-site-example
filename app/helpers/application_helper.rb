module ApplicationHelper

  def tab_link_to(name, page, page_name, options = {}, html_options = {})
    if page.name == page_name
      content_tag(:span, name, :class => 'current')
    else
      link_to name, options, html_options
    end
  end

end
