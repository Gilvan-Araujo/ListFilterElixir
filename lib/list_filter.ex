defmodule ListFilter do
  def call(list) do
    count =
      Enum.map(list, fn x ->
        val = Integer.parse(x)

        if val !== :error && Integer.mod(elem(val, 0), 2) == 1 do
          true
        end
      end)

    Enum.frequencies(count).true
  end
end
