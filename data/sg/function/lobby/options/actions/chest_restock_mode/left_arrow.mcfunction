execute if data storage sg:options {Options:{chest_restock_mode:"cornucopia"}} run return run function sg:lobby/options/actions/chest_restock_mode/set_none
execute if data storage sg:options {Options:{chest_restock_mode:"all"}} run return run function sg:lobby/options/actions/chest_restock_mode/set_cornucopia
execute if data storage sg:options {Options:{chest_restock_mode:"none"}} run function sg:lobby/options/actions/chest_restock_mode/set_all
