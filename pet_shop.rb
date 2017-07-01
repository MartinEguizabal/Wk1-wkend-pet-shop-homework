def pet_shop_name(shop)
  return shop[:name]
end

def total_cash(shop)
  return shop[:admin][:total_cash]
end

def add_or_remove_cash(shop, amount)
  shop[:admin][:total_cash] += amount
  total_cash(shop)
end

# for above confirm that returning does the same thing as having nothing: total_cash(shop) vs return total_cash(shop)

def pets_sold(shop)
  return shop[:admin][:pets_sold]
end

def increase_pets_sold(shop, amount)
  shop[:admin][:pets_sold] += amount
  pets_sold(shop)
end 

def stock_count(shop)
  shop[:pets].length()
end

def stock_count(shop)
  pets_array = []
  for pet in shop[:pets]
    pets_array << pet
  end
  pets_array.length
end

def pets_by_breed(shop, breed)
  bs_array = []

  for pet in shop[:pets]
    if pet[:breed] == breed
      bs_array << pet
    end
  end
  return bs_array
end

def find_pet_by_name(shop, pet_name)
  for pet in shop[:pets]
    if pet[:name] == pet_name
      return pet
    end
  end
  return nil
end

