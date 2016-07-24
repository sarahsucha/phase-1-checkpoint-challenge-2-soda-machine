class SodaMachine
  attr_reader :sodas, :cash

  def initialize(args = {})
    @sodas = args[:sodas]
    @cash = args[:cash]
  end

  def current_inventory_count
    @sodas.length
  end

  def find_soda(soda_brand)
    @sodas.find do |soda|
      soda.brand == soda_brand
    end
  end

  def sell(soda_brand)
    if find_soda(soda_brand) != nil
      @sodas.delete_if do |soda|
        if soda.brand == soda_brand
        @cash += soda.price
        end
      end
    end
  end

  #Oshoke
  # def sell(soda_brand)
  #   if find_soda(soda_brand)
  #     sold_soda = find_soda(soda_brand)
  #     @cash += sold_soda.price
  #     @sodas.delete(sold_soda)
  #   end
  # end

end
