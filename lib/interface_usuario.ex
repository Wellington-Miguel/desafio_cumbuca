defmodule InterfaceUsuario do
  def mostrar_boas_vindas do
    IO.puts("\n-------------------------------------------------------------------------")
    IO.puts("Olá, bem-vindo ao melhor enumerador de reis e rainhas de toda Combúquia!")
    IO.puts("-------------------------------------------------------------------------\n")
    IO.puts("Por favor, insira os nomes dos monarcas, um por linha.\nFinalize apertando Enter duas vezes.\n")
  end

  def mostrar_resultado(nomes_ordenados) do
    IO.puts(Enum.join(nomes_ordenados, "\n"))
    Enum.join(nomes_ordenados, "\n")
  end
end
