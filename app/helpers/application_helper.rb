module ApplicationHelper
  def page_title
    title = "Telephone Book"
    title = @page_title + " - " + title if @page_title
    title
  end
end
