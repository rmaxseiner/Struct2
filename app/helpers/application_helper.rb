module ApplicationHelper
  def title
    base_title = "Struct - The Infrastructure Design Application"
    if @title.nil?
      base_title
    else
        "#{base_title} | #{@title}"
    end
  end
end
