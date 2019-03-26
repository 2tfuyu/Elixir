defmodule Guard do
    def this_is x when is_number x do
        IO.puts "{x} is a number"
    end

    def this_is x when is_list do
        IO.puts "{x} is a list"
    end

    def this_is x when is_atom do
        IO.puts "{x} is an atom"
    end
end

Guard.this_is(4545)                 # => 4545 is a number
Guard.this_is([114514, 1919, 810])  # => [114514, 1919, 810] is a list
Guard.this_is(:nyan)               # => :nyan is an atom
