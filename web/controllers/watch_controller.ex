defmodule Rumbl.WatchController do
  use Rumbl.Video
  alias Rumbl.Video

  def show(conn, %{"id" => id}) do
    video = Repo.get!(Video, id)
    render(conn, "show.html", video: video)
  end
end
