class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

    def full_name
      "#{self.first_name} #{self.last_name}"
    end
    def list_roles
      Show.where(id:1).pluck(:name)
      binding.pry
      self.characters.each do |c|
        puts "#{c.name} - #{Show.where(id:c.show_id).pluck(:name)}"
      end
    end
end
