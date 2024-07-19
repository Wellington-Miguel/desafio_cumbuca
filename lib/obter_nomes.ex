defmodule ObterNomes do
  def obter_nomes(nomes) do
    nome = IO.gets("") |> String.trim()
    case nome do
      "" -> nomes
      nome_trimado -> obter_nomes(nomes ++ [nome_trimado])
    end
  end
end
