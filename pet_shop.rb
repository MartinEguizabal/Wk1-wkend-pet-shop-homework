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

def increase_pets_sold(shop, pet_amount)
  shop[:admin][:pets_sold] += pet_amount
  pets_sold(shop)
end 

def stock_count(shop)
  shop[:pets].length()
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

# not sure i fully get the above: 'return pet' stops the loop right? so what if there were more than one arthur that we wanted to find? how would you find them all? push them into array and then return array, as in pets_by_breed?

def remove_pet_by_name(shop, pet_name)
  for pet in shop[:pets]
    if pet[:name] == pet_name
      pet[:name] = nil
    end
  end
end

def add_pet_to_stock(shop, new_pet)
  shop[:pets] << new_pet
end

# in the above, it feels like you should be drilling down into new_pet (@new_pet). what if there were more than one hashes? is it the case that if there is more than one hashes there will always be a hash handle (ex: pets:)? or if its not a hash than it will be an array which is straightforward to access?

def customer_pet_count(customer)
  return customer[:pets].length()
end

def add_pet_to_customer(customer, pet_name)
  customer[:pets] << pet_name
end

# OPTIONAL

def customer_can_afford_pet(customer, pet)
  if pet[:price] <= customer[:cash]
    return true
  else
    return false
  end
end

def sell_pet_to_customer(shop, pet, customer)
  pre_count = customer_pet_count(customer)

  if pet != nil
    if customer_can_afford_pet(customer, pet) == true
   
      add_pet_to_customer(customer, pet)
      pet_name = pet[:name]

      for a_pet in shop[:pets]
        if a_pet[:name] == pet_name
          pet_price = a_pet[:price]
          # in here
        end
      end

      # before I had the below within the if statement and it didn't work. i think i know but could you explain why?

      post_count = customer_pet_count(customer)
      pet_amount = post_count - pre_count
      increase_pets_sold(shop, pet_amount)

      customer[:cash] = customer[:cash] - pet_price
      amount = pet_price

      add_or_remove_cash(shop, amount)
    end
  end
end