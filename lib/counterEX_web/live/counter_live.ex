defmodule CounterEXWeb.CounterLive do
  use CounterEXWeb, :live_view

  def mount(_params, _session, socket) do
    socket = assign(socket, counter: 0)
    socket = assign(socket, stuff: [])

    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <div>
      <h1>Click the button to increment</h1>
      <span> <%= @counter %> </span>
      <br />
      <button phx-click="increment">+1</button>
      <button phx-click="decrement">-1</button>
    </div>
    """
  end

  def handle_event("increment", _unsigned_params, socket) do
    socket = update(socket, :counter, &(&1 + 1))

    {:noreply, socket}
  end

  def handle_event("decrement", _unsigned_params, socket) do
    socket = update(socket, :counter, &(&1 - 1))

    {:noreply, socket}
  end
end
