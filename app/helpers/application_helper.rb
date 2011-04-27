module ApplicationHelper

  # Return a title on a per-page basis.
  def title
    base_title = "DuuniForum"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
def logo
    image_tag("logo.png", :alt => "Duuniforum", :class => "round")
  end
end

  end

