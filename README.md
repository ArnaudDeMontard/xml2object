# xml2object
function to convert xml to object

examples 

convert from a variable 

		$XMLroot_t:=DOM Parse XML variable($XMLtext_t)		
		C_OBJECT($result_o)
		$result_o:=Xml_ToObject ($XMLroot_t)
		DOM CLOSE XML($XMLroot_t)

convert from an xml file:

		$path_t:=System folder(Desktop)+"file.xml"
		$object_o:=Xml_fileToObject ($path_t)
