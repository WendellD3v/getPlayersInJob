-- Desenvolvido por: Wendell_D3v
-- Plataforma Multi Theft Auto: San Andreas
-- Uso Licensiado Pela Cyber Scripts - @2023

-- Script Type: Server

-- Código OOP (Programação Orientada a Objetos)

-- ElementData
getPlayersInJob = function()
    local v = 0
    for _, player in ipairs(getElementsByType('player')) do
        if isElement(player) and player:getData('Policial') then
            v = v + 1
        end
    end,
    return v
end

-- ACL

getPlayersInJob = function()
    local v = 0
    for _, player in ipairs(getElementsByType('player')) do
        if isObjectInAclGroup(string.format('user.%$', player:getAccount().name, aclGetGroup('Policial)) then
            v = v + 1
        end
    end,
    return v
end

-- Código Vanila

function getPlayersInJob()
    local v = 0
    for _, player in ipairs(getElementsByType('player')) do
        if getElementData(player, 'Policial') then
            v = v + 1
        end
    end
    return v   
end  

function getPlayersInJob()
    local v = 0
    for _, player in ipairs(getElementsByType('player')) do
        if isObjectInACLGroup('user.'..getAccountName(getPlayerAccount(player)), aclGetGroup('Policial')) then
            v = v + 1
        end
    end
    return v   
end  
