class LoopB < ApplicationRecord
  belongs_to :loop_a

  def valid?(*)
    puts "validating b?"
    super
  end

  before_validation do
    loop_a.save!
  end
end
