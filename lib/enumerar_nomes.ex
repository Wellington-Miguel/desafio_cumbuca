defmodule EnumerarNomes do
  alias NumerosRomanos

  def enumerar(nomes) do
    nomes
    |> Enum.reduce([], fn nome_busca, lista_nomes ->
      frequencia = Enum.filter(lista_nomes, fn nome_atual ->
        String.starts_with?(nome_atual, nome_busca)
      end)

      if length(frequencia) == 0 do
        lista_nomes ++ ["#{nome_busca} I"]
      else
        enumeracao = length(frequencia) + 1
        enum_romano = NumerosRomanos.para_romano(enumeracao)
        lista_nomes ++ ["#{nome_busca} #{enum_romano}"]
      end
    end)
  end
end
