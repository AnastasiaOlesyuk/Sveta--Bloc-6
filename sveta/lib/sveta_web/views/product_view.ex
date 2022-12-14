defmodule SvetaWeb.ProductView do
  use SvetaWeb, :view
  alias SvetaWeb.ProductView

  def render("index.json", %{products: products}) do
    %{data: render_many(products, ProductView, "product.json")}
  end

  def render("show.json", %{product: product}) do
    %{data: render_one(product, ProductView, "product.json")}
  end

  def render("product.json", %{product: product}) do
    %{
      id: product.id,
      product_id: product.product_id,
      src: product.src,
      title: product.title,
      gender: product.gender,
      category: product.category,
      part: product.part
    }
  end
end
