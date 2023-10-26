checkForRole = function(roleId)
    local hasPerms = lib.callback.await('cat_discord:checkForRole', 100, roleId)
    return hasPerms
end

exports('checkForRole', checkForRole)

getRoles = function()
    local roles = lib.callback.await('cat_discord:getRoles', 100)
    if roles then
        return roles
    else
        return false
    end
end

exports('checkForRole', checkForRole)