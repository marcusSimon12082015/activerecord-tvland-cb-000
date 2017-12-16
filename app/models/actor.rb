class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

    def full_name
      "#{self.first_name} #{self.last_name}"
    end
    def list_roles
      list_of_roles = []
      self.characters.each do |c|
        show = Show.where(id:c.show_id).pluck(:name)[0]
        puts "#{c.name} - #{show}" << list_of_roles
        #binding.pry
      end
      list_of_roles
    end
end
