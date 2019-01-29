class LoopA < ApplicationRecord
  has_one :loop_b

  def save!(*)
    puts "saving a"
    super
  end

  before_validation do
    loop_b.save!
  end
end
