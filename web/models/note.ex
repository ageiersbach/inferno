defmodule Inferno.Note do
  use Inferno.Web, :model

  schema "notes" do
    field :title, :string
    field :body, :string
    field :sort_order, :integer

    timestamps
  end

  @required_fields ~w(title body sort_order)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If `params` are nil, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
