defmodule NumerosRomanos do
  def para_romano(inteiro) do
    numeros_romanos = [
      {"M", 1000}, {"CM", 900}, {"D", 500}, {"CD", 400}, {"C", 100},
      {"XC", 90}, {"L", 50}, {"XL", 40}, {"X", 10}, {"IX", 9},
      {"V", 5}, {"IV", 4}, {"I", 1}
    ]

    numeros_romanos
    |> Enum.reduce({inteiro, ""}, fn {simbolo, valor}, {restante, romano} ->
      contador = div(restante, valor)
      novo_romano = romano <> String.duplicate(simbolo, contador)
      novo_restante = restante - valor * contador
      {novo_restante, novo_romano}
    end)
    |> elem(1)
  end
end
