class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters
  has_many :actors, through: :characters

  def build_network(hash)
    network_n = Network.find_or_create_by(hash)
    self.network = network_n
  end
end
