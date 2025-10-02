
module ApplicationHelper
  # Builds a sort link that toggles asc/desc and shows ▲/▼
  def sort_link(column, label = nil)
    label ||= column.to_s.titleize

    current_column = params[:sort]
    current_dir    = params[:direction].presence_in(%w[asc desc]) || 'asc'
    next_dir       = (current_column == column && current_dir == 'asc') ? 'desc' : 'asc'

    icon = ''
    if current_column == column
      icon = current_dir == 'asc' ? ' ▲' : ' ▼'
    end

    link_to("#{ERB::Util.html_escape(label)}#{icon}".html_safe,
            movies_path(sort: column, direction: next_dir))
  end

  # For <th aria-sort="ascending|descending|none">
  def aria_sort_for(column)
    return 'none' unless params[:sort] == column
    (params[:direction] == 'desc') ? 'descending' : 'ascending'
  end
end