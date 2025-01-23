defmodule StaffingAggregator do
  defmodule Employee do
    defstruct [:name, :project, :hours_worked, :hourly_rate]
  end

  @doc """
  Aggregates the total hours and total cost for a specific project from a list of employees.

  ## Parameters
  - employees: List of Employee structs or maps.
  - project_name: String representing the project name to aggregate data for.

  ## Returns
  A map with :total_hours and :total_cost for the specified project.
  """
  def aggregate_project_data(employees, project_name) do
    employees
    |> Enum.filter(&(&1.project == project_name))
    |> Enum.reduce(%{total_hours: 0, total_cost: 0.0}, fn employee, acc ->
      %{
        total_hours: acc.total_hours + employee.hours_worked,
        total_cost: acc.total_cost + employee.hours_worked * employee.hourly_rate
      }
    end)
  end
end
