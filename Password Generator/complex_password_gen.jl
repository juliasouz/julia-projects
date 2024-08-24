using Random

const LOWERCASE = 'a':'z'
const UPPERCASE = 'A':'Z'
const DIGITS = '0':'9'
const SPECIAL = ['!', '@', '#', '$', '%', '^', '&', '*', '(', ')', '-', '_', '+', '=', '[', ']', '{', '}', '|', ';', ':', ',', '.', '<', '>', '/', '?']

function generate_password(length::Int)
    password = [rand(LOWERCASE), rand(UPPERCASE), rand(DIGITS), rand(SPECIAL)]

    all_chars = [LOWERCASE; UPPERCASE; DIGITS; SPECIAL]
    for i in 5:length
        push!(password, rand(all_chars))
    end

    return join(shuffle(password))
end

function get_password_length()
    while true
        println("Enter the desired password length (minimum 8): ")
        length = parse(Int, readline())
        if length >= 8
            return length
        else
            println("Password length must be at least 8 characters. Please try again.")
        end
    end
end
password_length = get_password_length()
println("Welcome to the Complex Password Generator!")
println("Generated password: ", generate_password(password_length))
