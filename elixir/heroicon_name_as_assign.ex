defmodule SomeProjectWeb.Icon do
  use SomeProjectWeb, :live_view

  attr :name, :atom, required: true
  def icon(assigns) do
    {%{name: name}, assigns} = Map.split(assigns, [:name])
    apply(Heroicons, name, [assigns])
  end
end
