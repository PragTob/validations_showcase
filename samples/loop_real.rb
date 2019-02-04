class LoopB < ApplicationRecord
  belongs_to :loop_a

  before_save :something, if: :full_moon?

  def something
    some_calculation if february?
    # ...
  end

  # ...

  def some_calculation
    loop_a.save! if loop_a.changed?
  end
end