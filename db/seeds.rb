puts "Creating companies..."
c1 = Company.create(name: "Google", founding_year: 1998)
Company.create(name: "Facebook", founding_year: 2004)
Company.create(name: "Dunder Mifflin", founding_year: 2002)
Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
d1 = Dev.create(name: "Rick")
Dev.create(name: "Morty")
Dev.create(name: "Mr. Meseeks")
Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

Freebie.create(company_id: c1.id, dev_id: d1.id, item_name: "moon", value: 100000)

items = ["soccer ball", "Stick", "candy", "deck"]
25.times do 
  Freebie.create(company_id: Company.all.sample.id, dev_id: Dev.all.sample.id, item_name: items.sample, value: rand(50..1000))
end
# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here

puts "Seeding done!"
