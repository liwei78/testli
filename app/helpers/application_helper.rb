module ApplicationHelper
  def show_label(testcase)
    _str = ""
    case testcase.state
    when 0
      _str = "<span class='label label-default'>#{testcase.state_view}</span>"
    when 1
      _str = "<span class='label label-primary'>#{testcase.state_view}</span>"
    when 2
      _str = "<span class='label label-success'>#{testcase.state_view}</span>"
    end
    _str.html_safe
  end
end
