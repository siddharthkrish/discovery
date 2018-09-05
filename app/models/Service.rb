class Service
  include ActiveModel::Model

  attr_accessor :name, :version, :created_by

  def save!
    @store[name] = self
  end

  def self.all
    @store
  end

  private

  # hasmap that will act as an inmemory store
  @store = {}
end