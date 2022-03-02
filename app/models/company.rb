class Company < ActiveRecord::Base
  has_many :freebies
  has_many :devs, through: :freebies

  def give_freebie(dev_instance, item_name_string, value)
    Freebie.create(company_id: self.id, dev_id: dev_instance.id, item_name_string: item_name, value: value)
  end

  def self.oldest_company
    self.order(:founding_year).first
    # Company.order(:founding_year).first or .last
    # self.all.minimum(:founding_year)

  end
end
