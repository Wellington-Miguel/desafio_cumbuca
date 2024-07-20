defmodule DesafioCumbuca do
  alias InterfaceUsuario
  alias ObterNomes
  alias EnumerarNomes
  def main(_arg) do
    InterfaceUsuario.mostrar_boas_vindas()
    nomes = ObterNomes.obter_nomes([])
    nomes_ordenados = EnumerarNomes.enumerar(nomes)
    InterfaceUsuario.mostrar_resultado(nomes_ordenados)
  end
end
