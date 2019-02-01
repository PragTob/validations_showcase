a = LoopA.new
b = LoopB.new

a.loop_b = b
# b.loop_a = a

a.save!

p LoopA.count