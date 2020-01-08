
# The goal is to run the simulation 10,000 times and demonstrate that it is indeed a 2/3 chance of winning by switching your door choice vs a 1/3 chance of winning by keeping your original choice. Put these results in results.jpg and push the repo somewhere where I can review it.

#*            door 1       door 2       door 3
# case 1       $$          goat         goat
# case 2      goat          $$          goat
# case 3      goat         goat          $$
def monty(sims)
    start = Time.now
    doors = ['1', '2', '3']
    def random_door(arr)
        arr.sample()
    end
    stay_result = 0
    switch_result = 0



    sims.times do 
        original_pick = random_door(doors)
        prize_door = random_door(doors)
        opened_door = random_door(doors - [original_pick, prize_door])
        switch_pick = random_door(doors - [original_pick, opened_door])

        if original_pick == prize_door
            stay_result += 1
        end
        if switch_pick == prize_door
            switch_result += 1
        end
    end


    p "Result of staying with original door:#{stay_result/sims.to_f}"
    p "Result of switching door: #{switch_result/sims.to_f}"

    # code to time
    finish = Time.now
    diff = finish - start
    p "Time to complete: #{diff}"
end

monty(10000)