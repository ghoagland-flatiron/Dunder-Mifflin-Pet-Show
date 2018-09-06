class Employee < ApplicationRecord
  belongs_to :dog

  with_options if: :alias? do |employee|
    employee.validates :alias, uniqueness: true
  end

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def alias?
    self.alias != nil
  end
end
