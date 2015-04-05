local priority_queue = require "priority_queue"

local pq = priority_queue.new()

for i = 0, 100 do
    pq:equeue(math.random(1, 10000))
end

while true do
    local n = pq:dequeue()
    if not n then break end
    print(n)
end
