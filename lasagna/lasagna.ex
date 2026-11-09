defmodule Lasagna do
  def expected_minutes_in_oven() do
    40
  end
  def remaining_minutes_in_oven(actual_minutes) do
    expected_minutes_in_oven() - actual_minutes
  end
  def preparation_time_in_minutes(layers_number) do
    layers_number * 2
  end
  def total_time_in_minutes(layers_number, actual_minutes) do
    preparation_time_in_minutes(layers_number) + actual_minutes
  end
  def alarm() do
    "Ding!"
  end
end
