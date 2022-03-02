class Freebie < ActiveRecord::Base
  belongs_to :company
  belongs_to :dev

  # {insert dev's name} owns a {insert freebie's item_name} from {insert company's name}
  def print_details
    "#{self.dev.name} owns a #{self.item_name} from #{self.company.name}"
    # "#{dev.name} owns a #{self.item_name} from #{company.name}"
  end
end
