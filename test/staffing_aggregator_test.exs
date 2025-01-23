defmodule StaffingAggregatorTest do
  use ExUnit.Case
  alias StaffingAggregator.Employee

  @employees [
    %Employee{name: "Alice", project: "Project Alpha", hours_worked: 10, hourly_rate: 50.0},
    %Employee{name: "Bob", project: "Project Beta", hours_worked: 20, hourly_rate: 40.0},
    %Employee{name: "Charlie", project: "Project Alpha", hours_worked: 15, hourly_rate: 50.0},
    %Employee{name: "Dana", project: "Project Gamma", hours_worked: 5, hourly_rate: 60.0}
  ]

  test "aggregate_project_data/2 calculates total hours and cost for a project" do
    result = StaffingAggregator.aggregate_project_data(@employees, "Project Alpha")
    assert result.total_hours == 25
    assert result.total_cost == 1250.0
  end

  test "aggregate_project_data/2 returns zero values for a non-existent project" do
    result = StaffingAggregator.aggregate_project_data(@employees, "Project Delta")
    assert result.total_hours == 0
    assert result.total_cost == 0.0
  end
end
