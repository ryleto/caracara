defmodule Caracara.Comment do
  use Caracara.Web, :model

  schema "comments" do
    field :name, :string
    field :content, :string
    belongs_to :post, Caracara.Post, foreign_key: :post_id

    timestamps
  end

  @required_fields ~w(name content post_id)
  @optional_fields ~w()

  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
