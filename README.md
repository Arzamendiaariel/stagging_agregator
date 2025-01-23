# StaffingAggregator

A simple Elixir application that aggregates work hours and costs for staffing teams. The application calculates total hours worked and total cost for specific projects based on employee data.

## Features

- Calculate total hours worked per project
- Calculate total cost per project based on hours worked and hourly rates
- Handle multiple employees and projects

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `staffing_aggregator` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:staffing_aggregator, "~> 0.1.0"}
  ]
end
```

## Usage

```elixir
# Create a list of employees
employees = [
  %{name: "Alice", project: "Project Alpha", hours_worked: 10, hourly_rate: 50.0},
  %{name: "Bob", project: "Project Beta", hours_worked: 20, hourly_rate: 40.0},
  %{name: "Charlie", project: "Project Alpha", hours_worked: 15, hourly_rate: 50.0},
  %{name: "Dana", project: "Project Gamma", hours_worked: 5, hourly_rate: 60.0}
]

# Calculate project aggregates
StaffingAggregator.aggregate_project_data(employees, "Project Alpha")
# Returns: %{total_hours: 25, total_cost: 1250.0}
```

## Testing

Run the tests using:

```bash
mix test
```

## Documentation

Documentation can be generated with [ExDoc](https://github.com/el$$ixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/staffing_aggregator>.

# staffing_aggregator
