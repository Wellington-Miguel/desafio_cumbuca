defmodule DesafioCumbuca do
  def main do
    IO.puts("\n-------------------------------------------------------------------------")
    IO.puts("Olá, bem-vindo ao melhor enumerador de reis e rainhas de toda Combúquia!")
    IO.puts("-------------------------------------------------------------------------\n")
    IO.puts("Por favor, insira os nomes dos monarcas, um por linha.\nFinalize apertando Enter duas vezes.\n")
    nomes = obter_nomes([])
    nomes_ordenados = enumerar(nomes)
    resultado(nomes_ordenados)
  end
    defp obter_nomes(nomes) do
      nome = IO.gets("") |> String.trim()
      case nome do
        "" -> nomes
        nome_trimado -> obter_nomes(nomes ++ [nome_trimado])
      end
    end
    defp enumerar(nomes) do
      nomes |> Enum.reduce([], fn nome_busca, lista_nomes ->
                frequencia = Enum.filter(lista_nomes, fn nome_atual ->
                  String.starts_with?(nome_atual, nome_busca)
                  end)
                if length(frequencia) == 0 do
                   lista_nomes ++ ["#{nome} I"]
                else
                  enumeracao = length(frequencia) + 1
                  enum_romano = para_romano(enumeracao)
                  lista_nomes ++ ["#{nome} #{enum_romano}"]
                end
              end)
    end
    defp para_romano(inteiro) do
      numero_romanos = [
        {"M", 1000}, {"CM", 900}, {"D", 500}, {"CD", 400}, {"C", 100},
        {"XC", 90}, {"L", 50}, {"XL", 40}, {"X", 10}, {"IX", 9},
        {"V", 5}, {"IV", 4}, {"I", 1}
      ]

      numero_romanos
      |> Enum.reduce({inteiro, ""}, fn {simbolo, valor}, {restante, romano} ->
        contador = div(restante, valor)
        novo_romano = romano <> String.duplicate(simbolo, contador)
        novo_restante = restante - valor * contador
        {novo_restante, novo_romano}
      end)
      |> elem(1)
    end
    defp resultado(nomes_ordenados) do
       IO.puts(Enum.join(nomes_ordenados, "\n"))
    end
end

DesafioCumbuca.main()
