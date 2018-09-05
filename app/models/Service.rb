class Service
  include ActiveModel::Model

  attr_accessor :name, :version, :created_by

  def save!
    @@store[name] = self
  end

  def self.all
    @@store
  end

  private

  # hasmap that will act as an in-memory store
  @@store = Hash.new
end