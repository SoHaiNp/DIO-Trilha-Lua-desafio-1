--[[

+-----------------------------------------------------------------+
|           Richter Belmont: Legendary Vampire Hunter             |
+-----------------------------------------------------------------+
|                                                                 |
|   'Die monster! You don't belong in this world.' Richter Belm-  |
| ont é um lendário caçador de vampiros, conhecido por ser o mais |
| novo na família Belmont a destruir Drácula. Na época tinha ape- |
| nas 19 anos quando obteve tal feito.                            |
|                                                                 |
+-----------------------------------------------------------------+
|Atributo               Equipamento                 Valor         |
+-----------------------------------------------------------------+
|                                                                 |
|Nível do personagem    N/A                         ??            |
|Pontos de vida         N/A                         400           |
|Pontos de ataque       Chicote Vampire killer      250           |
|Imune contra           Cruz                        Trevas        |
|Vúlneravel contra      N/A                         Dano físico   |
|Comida favorita        Frango gigante              N/A           |
+-----------------------------------------------------------------+

]]

--Informações básicas do personagem (Nome e título)
local HERO_NAME = "Richter Belmont"
local HERO_TITLE = "Legendary Vampire Hunter"

--Principal frase e biografia
local quote = "Die monster! You don't belong in this world!"
local bio1 = "Richter Belmont is a legendary vampire hunter, "
local bio2 = "known for being the youngest Belmont in the family to destroy Drac-"
local bio3 = "ula. He was only 19 years old when acomplished that victory."

--Dados base do personagem
local level = 19
local experience = 8
local lifePoints = 400
local attackPoints = 250
local charStrength = "Darkness"
local charWeakness = "Physical damage"
local charEnjoy = "🍗"
local emoji = "✝"

--Função para demonstrar a barra de experiência atual
local function getProgressBar(experience)

    local fullChar = "▮"
    local emptyChar = "▯"
    local result = ""

        for i = 1, 10, 1 do
            if i <= experience then
                result = result .. fullChar
            else
                result = result .. emptyChar
            end
        end

    return result

end

print("")
print("+-----------------------------------------------------------------+")
print("|            " .. HERO_NAME .. ": " .. HERO_TITLE .. "            |")
print("+-----------------------------------------------------------------+")
print("1. General Information")
print("+-----------------------------------------------------------------+")
print("Main quote       :   " .. quote .. "")
print("Character Bio    :   " .. bio1 .. "\n" .. bio2 .. "\n" .. bio3)
print("")
print("+-----------------------------------------------------------------+")
print("2. Character Stats")
print("+-----------------------------------------------------------------+")
print("Character level  :   " .. "level " .. level)
print("Experiência      :   " .. "level 19 " .. getProgressBar(experience) .. " level 20")
print("Life points      :   " .. lifePoints)
print("Attack points    :   " .. attackPoints)
print("Immune against   :   " .. charStrength)
print("Weak against     :   " .. charWeakness)
print("Favorite emoji   :   " .. emoji)
print("Favorite food    :   " .. charEnjoy)
print("")
print("+-----------------------------------------------------------------+")
print("")

--[[

    A ideia era deixar o mais próximo possível do exemplo no cabeçalho do
    arquivo, porém para fazer isso eu precisaria criar uma inteligência us
    ando tables com o LUA.
    Por fim, optei por deixar tudo em inglês (salvo engano os comentários),
    pois o console não consegue entender bem a conversão de acentos e carac
    teres especiais.

    Eu usei como base o personagem Richter Belmont de Castlevania, o meu per
    sonagem favorito dos videogames.

]]