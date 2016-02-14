defmodule Caracara.Comment do
  use Caracara.Web, :model

  schema "comments" do
    field :name, :string
    field :content, :string
    belongs_to :post, Caracara.Post

    timestamps
  end

  @required_fields ~w(name content)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
