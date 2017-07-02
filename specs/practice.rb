  @customers = [
    {
      name: "Craig",
      pets: [],
      cash: 1000
    },
    {
      name: "Zsolt",
      pets: [],
      cash: 50
    }
  ]

  @new_pet = {
          name: "Bors the Younger",
          pet_type: :cat,
          breed: "Cornish Rex",
          price: 100
        }

  @pet_shop = {
      pets: [
        {
          name: "Sir Percy",
          pet_type: :cat,
          breed: "British Shorthair",
          price: 500
        },
        {
          name: "King Bagdemagus",
          pet_type: :cat,
          breed: "British Shorthair",
          price: 500
        },
        {
          name: "Sir Lancelot",
          pet_type: :dog,
          breed: "Pomsky",
          price: 1000,
        },
        {
          name: "Arthur",
          pet_type: :dog,
          breed: "Husky",
          price: 900,
        },
        {
          name: "Tristan",
          pet_type: :dog,
          breed: "Basset Hound",
          price: 800,
        },
        {
          name: "Merlin",
          pet_type: :cat,
          breed: "Egyptian Mau",
          price: 1500,
        }
      ],
      admin: {
        total_cash: 1000,
        pets_sold: 0,
      },
      name: "Camelot of Pets"
    }


    # def add_pet_to_customer(shop)
    #   for pet in shop[:pets]
    #     if pet[:name] == "Arthur"
    #     return pet[:price]
    #     final_price = pet[:price] + 500
    #     end
    #   end
    #   puts final_price
    # end

    # puts add_pet_to_customer(@pet_shop)


    # def find_pet_by_name(shop, pet_name)
    #   for pet in shop[:pets]
    #     if pet[:name] == pet_name
    #       return pet
    #     end
    #   end
    #   return nil
    # end
 
    # def pet_name(pet)
    #   name = pet[:name]
    #   puts name
    # end

    # p pet_name(find_pet_by_name(@pet_shop, "Arthur"))

    def find_pet_by_name(shop, pet_name)
      for pet in shop[:pets]
        if pet[:name] == pet_name
          return pet
        end
      end
      return nil
    end

    p find_pet_by_name(@pet_shop, "Dave")