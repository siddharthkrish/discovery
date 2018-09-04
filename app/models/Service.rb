class Service
  include ActiveModel::Model

  attr_accessor :name, :version, :created_by

  def save!
  end
end