module ApplicationHelper
  
  
  # Return a title on a per-page basic
  def title
    base_title = "Ruby on Rials Tutorial Sample App"
    
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
  
  def logo
    image_tag("logo.png", :alt => "Sample App", :class => "round")
  end
  
  
end
