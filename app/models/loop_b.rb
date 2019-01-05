class LoopB < ApplicationRecord
  belongs_to :loop_a

  before_validation do
    loop_a.save
  end
end
