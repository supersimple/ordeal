defmodule OrdealTest do
  use ExUnit.Case
  doctest Ordeal

  describe "string_ordinal/1" do
    test "number in the ones" do
      assert Ordeal.string_ordinal(1) == "first"
      assert Ordeal.string_ordinal(2) == "second"
      assert Ordeal.string_ordinal(3) == "third"
      assert Ordeal.string_ordinal(4) == "fourth"
      assert Ordeal.string_ordinal(5) == "fifth"
      assert Ordeal.string_ordinal(6) == "sixth"
      assert Ordeal.string_ordinal(7) == "seventh"
      assert Ordeal.string_ordinal(8) == "eighth"
      assert Ordeal.string_ordinal(9) == "ninth"
    end

    test "number in the teens" do
      assert Ordeal.string_ordinal(11) == "eleventh"
      assert Ordeal.string_ordinal(12) == "twelfth"
      assert Ordeal.string_ordinal(13) == "thirteenth"
      assert Ordeal.string_ordinal(14) == "fourteenth"
      assert Ordeal.string_ordinal(15) == "fifteenth"
      assert Ordeal.string_ordinal(16) == "sixteenth"
      assert Ordeal.string_ordinal(17) == "seventeenth"
      assert Ordeal.string_ordinal(18) == "eighteenth"
      assert Ordeal.string_ordinal(19) == "nineteenth"
    end

    test "number in the tens" do
      assert Ordeal.string_ordinal(20) == "twentieth"
      assert Ordeal.string_ordinal(70) == "seventieth"
      assert Ordeal.string_ordinal(21) == "twenty-first"
      assert Ordeal.string_ordinal(28) == "twenty-eighth"
      assert Ordeal.string_ordinal(34) == "thirty-fourth"
      assert Ordeal.string_ordinal(42) == "forty-second"
      assert Ordeal.string_ordinal(55) == "fifty-fifth"
      assert Ordeal.string_ordinal(69) == "sixty-ninth"
      assert Ordeal.string_ordinal(76) == "seventy-sixth"
      assert Ordeal.string_ordinal(82) == "eighty-second"
      assert Ordeal.string_ordinal(93) == "ninety-third"
    end

    test "numbers larger than 99" do
      assert_raise Mix.Error, fn -> Ordeal.string_ordinal(125) end
    end
  end
end
