defmodule TeacherWeb.AlbumLive.Index do
  use TeacherWeb, :live_view

  alias Teacher.Recordings

  @impl true
  def mount(_params, _session, socket) do
    albums = Recordings.list_albums()
    {:ok, assign(socket, :albums, albums)}
  end

end
