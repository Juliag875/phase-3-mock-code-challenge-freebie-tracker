class Dev < ActiveRecord::Base
  has_many :freebies
  has_many :companies, through: :freebies

  def received_one?(item_name)
    self.freebies.pluck(:item_name).include?(item_name)
    # array_of_names = self.freebies.map {|f| f.item_name}
    # array_of_names.include?(item_name)
  end

  def give_away(dev, freebie)
    binding.pry
    if freebie.dev == self
      freebie.update(dev_id: dev.id)
    end

    # freebie.dev_id = dev.id
    # freebie.save
  end
end
