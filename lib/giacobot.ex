defmodule Giacobot do

  @phrases [
    "Ma ôme",
    "Meu zovo",
    "2 X-elefante no romário lanches",
    "Exemplo de cultura",
    "Seloco",
    "Lá em DV",
    "TEU CU BURRO",
    "TEU FIOTE",
    "SARTE LôCO",
    "Ainda bem que to na CIPA",
    "Meu pau de rayban"
  ]

  def say do
    Enum.random(@phrases)
  end
end
