var:=1
Gui,Add,Text,vTEST w100,% "Input slot " Var
Gui,Add,Button,gAdd,Add
Gui,Show
return

Add:
GuiControl,,TEST,% "Input slot " . Var+=1
return