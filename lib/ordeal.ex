defmodule Ordeal do
  @defmodule """
  Interface for all functions.
  """
  defguard is_positive_integer(value) when is_integer(value) and value > 0

  @ones %{
    "1" => "first",
    "2" => "second",
    "3" => "third",
    "4" => "fourth",
    "5" => "fifth",
    "6" => "sixth",
    "7" => "seventh",
    "8" => "eighth",
    "9" => "ninth"
  }

  @teens %{
    "11" => "eleventh",
    "12" => "twelfth",
    "13" => "thirteenth",
    "14" => "fourteenth",
    "15" => "fifteenth",
    "16" => "sixteenth",
    "17" => "seventeenth",
    "18" => "eighteenth",
    "19" => "nineteenth"
  }

  @tens %{
    "1" => "tenth",
    "2" => "twentieth",
    "3" => "thirtieth",
    "4" => "fortieth",
    "5" => "fiftieth",
    "6" => "sixtieth",
    "7" => "seventieth",
    "8" => "eightieth",
    "9" => "nintieth"
  }

  @tens_prefix %{
    "2" => "twenty",
    "3" => "thirty",
    "4" => "forty",
    "5" => "fifty",
    "6" => "sixty",
    "7" => "seventy",
    "8" => "eighty",
    "9" => "ninety"
  }

  @doc """
  This is the only public function. It accepts any integer greater than zero.
  """
  def string_ordinal(int) when is_positive_integer(int) do
    convert_to_string(int)
  end

  def string_ordinal(int) do
    Mix.raise("#{int} is not a positive integer.")
  end

  defp convert_to_string(int) when int < 10 do
    @ones[to_string(int)]
  end

  defp convert_to_string(int) when int < 20 do
    @teens[to_string(int)]
  end

  defp convert_to_string(int) when int < 100 do
    [tens, ones] = int |> to_string |> String.split("", trim: true)

    if ones == "0" do
      @tens[tens]
    else
      @tens_prefix[tens] <> "-" <> @ones[ones]
    end
  end

  defp convert_to_string(_int) do
    Mix.raise("only numbers less than 100 are supported")
  end
end
