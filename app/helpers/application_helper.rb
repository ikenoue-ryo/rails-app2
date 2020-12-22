module ApplicationHelper
  def sortable(name, title = nil)
    title ||= name.titleize
    css_class = (name == sort_column) ? "current #{sort_direction}" : nil
    direction = (name == sort_column && sort_direction == "asc") ? "desc" : "asc"
    link_to title, {:sort => name, :direction => direction}, {:class => css_class}
  end
end
