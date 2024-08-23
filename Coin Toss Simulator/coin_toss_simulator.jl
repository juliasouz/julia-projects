function coin_toss()
    result = rand(Bool)
    if result
        return "Heads"
    else
        return "Tails"
    end
end

function simulate_tosses(n)
    heads = 0
    tails = 0
    for i in 1:n
        result = coin_toss()
        println("Toss $i: ", result)
        if result == "Heads"
            heads += 1
        else
            tails += 1
        end
    end
    println("Final Results:")
    println("Heads: $heads")
    println("Tails: $tails")
end

println("Welcome to the Coin Toss Simulator!")
println("How many times would you like to toss the coin?")
n = parse(Int, readline())

simulate_tosses(n)

