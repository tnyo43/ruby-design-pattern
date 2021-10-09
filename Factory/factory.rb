load '../utils/necessary_to_override.rb'

class Factory
  necessary_to_override :create_product, :register_product

  def create(owner)
    p = create_product(owner)
    register_product(p)
    p
  end
end
