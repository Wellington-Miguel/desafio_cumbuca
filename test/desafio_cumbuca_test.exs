defmodule DesafioCumbucaTest do
  use ExUnit.Case
  doctest DesafioCumbuca

  alias EnumerarNomes
  alias InterfaceUsuario

  test "enumerar monarcas corretamente" do
    nomes = [
      "Carlos",
      "Maria",
      "João",
      "Ana",
      "Pedro",
      "Luísa",
      "Rafael",
      "Fernanda",
      "Maria",
      "Juliana",
      "Carlos",
      "Carlos",
      "Carlos",
      "Carlos",
      "Carlos",
      "Carlos",
      "Carlos",
      "Carlos",
      "Carlos",
      "Carlos"
    ]

    resposta_esperada = """
      Carlos I
      Maria I
      João I
      Ana I
      Pedro I
      Luísa I
      Rafael I
      Fernanda I
      Maria II
      Juliana I
      Carlos II
      Carlos III
      Carlos IV
      Carlos V
      Carlos VI
      Carlos VII
      Carlos VIII
      Carlos IX
      Carlos X
      Carlos XI
      """

    nomes_ordenados = EnumerarNomes.enumerar(nomes)
    resposta = InterfaceUsuario.mostrar_resultado(nomes_ordenados)
    assert String.trim(resposta) == String.trim(resposta_esperada)
  end
end
