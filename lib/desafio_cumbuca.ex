defmodule DesafioCumbuca do
  def main do
    IO.puts("\n-------------------------------------------------------------------------")
    IO.puts("Olá, bem-vindo ao melhor enumerador de reis e rainhas de toda Combúquia!")
    IO.puts("-------------------------------------------------------------------------\n")
    IO.puts("Por favor, insira os nomes dos monarcas, um por linha.\nFinalize apertando Enter duas vezes.\n")
    nomes = criar_listas([])
    hello(nomes)
  end
    defp criar_listas(nomes) do
      nome = IO.gets("")
      case String.trim(nome) do
        "" -> nomes
        nome_trimado -> criar_listas(nomes ++ [nome_trimado])
      end
    end
    def hello(lista) do
      Enum.each(lista, fn nome -> IO.puts(nome) end)
    end
end

DesafioCumbuca.main()
