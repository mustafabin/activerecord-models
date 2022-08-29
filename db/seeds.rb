Role.destroy_all
Audition.destroy_all

5.times do 
    role = Role.create(
        character_name: Faker::Name.first_name 
    )
    audition = Audition.create(actor: Faker::Name.first_name ,location: Faker::Address.city,phone: Faker::PhoneNumber.cell_phone ,hired: "false",role_id: role.id)
end