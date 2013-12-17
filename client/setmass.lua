function ModulesLoad()
    Events:FireRegisteredEvent( "HelpAddItem",
        {
            name = "Set Mass",
            text = 
                "Set your vehicles mass with /mass <number>. Example: /mass 9001"
        } )
end

function ModuleUnload()
    Events:FireRegisteredEvent( "HelpRemoveItem",
        {
            name = "Set Mass"
        } )
end


Events:Subscribe("ModulesLoad", ModulesLoad)
Events:Subscribe("ModuleUnload", ModuleUnload)