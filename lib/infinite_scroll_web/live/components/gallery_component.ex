defmodule InfiniteScrollWeb.Components.GalleryComponent do
  use InfiniteScrollWeb, :live_component

  defp random_id, do: Enum.random(1..1_000_000)

  def render(assigns) do
    ~H"""
    <div>
      <div
        id="infinite-scroll-body"
        phx-update="append"
        class="grid grid-cols-3 gap-2"
      >
        <%= for image <- @images do %>
          <img id={"image-#{random_id()}"} src={image} />
        <% end %>
      </div>
      <div id="infinite-scroll-marker" phx-hook="InfiniteScroll" data-page={@page}></div>
    </div>
    """
  end
end
