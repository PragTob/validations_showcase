class LoopA < ApplicationRecord
  has_one :loop_b

  before_validation do
    loop_b.save
  end
end
