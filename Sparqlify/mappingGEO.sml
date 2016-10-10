Prefix geo: <http://geo.bio2rdf.org/>
Prefix dcterms:<http://purl.org/dc/elements/1.1/>
Prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
Prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#>
Prefix xsd: <http://www.w3.org/2001/XMLSchema#>
 
Create View Template geo As
    Construct {
        ?s  a geo:Sample.
        ?s  dcterms:title ?l2.
	    ?s	geo:gsmID ?l3.
	    ?s	geo:seriesID ?l4.
		?s	geo:gpl ?l5.
	
    }
    With
    ?s = uri(concat("http://geo.bio2rdf.org/", ?3))
	?l2 = plainLiteral(?2)
	?l3 = plainLiteral(?3)
	?l4 = plainLiteral(?4)  
	?l5 = plainLiteral(?5)
