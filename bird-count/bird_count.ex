defmodule BirdCount do
  def today([]), do: nil

  def today([today | _rest]), do: today

  def increment_day_count([]), do: [1]

  def increment_day_count([today | rest]) do
    [today + 1 | rest]
  end

  def has_day_without_birds?([]), do: false

  def has_day_without_birds?([0 | _rest]), do: true

  def has_day_without_birds?([_today | rest]) do
    has_day_without_birds?(rest)
  end

  def total([]), do: 0

  def total([today | rest]) do
    today + total(rest)
  end

  def busy_days([]), do: 0

  def busy_days([today | rest]) when today >= 5 do
    1 + busy_days(rest)
  end

  def busy_days([_today | rest]) do
    busy_days(rest)
  end
end