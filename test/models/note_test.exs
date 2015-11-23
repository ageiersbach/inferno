defmodule Inferno.NoteTest do
  use Inferno.ModelCase

  alias Inferno.Note

  @valid_attrs %{body: "some content", sort_order: 42, title: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Note.changeset(%Note{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Note.changeset(%Note{}, @invalid_attrs)
    refute changeset.valid?
  end
end
