  //Xml_fileToObject (path_t) -> obj
  //conversion fichier xml -> objet, chargement d'un fichier XML en DOM

C_TEXT:C284($1)
C_TEXT:C284($path_t)
SET ASSERT ENABLED:C1131(True:C214)

If (Count parameters:C259>0)
	$path_t:=$1
	ASSERT:C1129(Test path name:C476($path_t)=Is a document:K24:1)
	ok:=1
Else 
	$path_t:=Select document:C905($path_t;"";"Fichier xml à traiter";0)
	$path_t:=document
End if 

If (ok=1)
	ASSERT:C1129(Test path name:C476($path_t)=Is a document:K24:1)
	$XMLroot_t:=DOM Parse XML source:C719($path_t)
	If (ok=0)
		$error_t:="DOM Parse XML source"
	End if 
	
	ARRAY TEXT:C222($Xpath_at;0)
	
	If (ok=1)
		C_OBJECT:C1216($out_o)
		$out_o:=Xml_ToObject ($XMLroot_t)  //;->$Xpath_at)
	End if 
	
	If (Length:C16($XMLroot_t)>0)
		DOM CLOSE XML:C722($XMLroot_t)
	End if 
	$0:=$out_o
	
End if 
