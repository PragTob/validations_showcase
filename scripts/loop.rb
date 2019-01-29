a = LoopA.new
b = LoopB.new

a.loop_b = b

a.save!

p LoopA.count