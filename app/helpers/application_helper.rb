module ApplicationHelper
  def show_label(testcase)
    _str = ""
    case testcase.state
    when 0
      _str = "<span class='label label-default'>#{testcase.state_view}</span>"
    when 1
      _str = "<span class='label label-info'>#{testcase.state_view}</span>"
    when 2
      _str = "<span class='label label-success'>#{testcase.state_view}</span>"
    end
    _str.html_safe
  end

  def show_scenario_cases_count(scenario)
    # TODO
    # I have add counter_cache but not affect. Test is ok. why ?
    _sc_count = scenario.cases.count
    "<span class='label label-warning' title='#{_sc_count} cases'>#{_sc_count}</span>".html_safe unless _sc_count.zero?
  end

  def show_child_scenarios_count(scenario)
    "<span class='label labl-default' title='Have Child Scenarios'>more</span>".html_safe unless scenario.child_scenarios.count.zero?
  end
end
