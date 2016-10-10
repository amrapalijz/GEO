Prefix geo: <http://bio2rdf.org/geo:>
Prefix gvoc: <http://bio2rdf.org/geo_vocabulary:>
Prefix bvoc: <http://bio2rdf.org/bio2rdf_vocabulary:>
Prefix dcterms:<http://purl.org/dc/elements/1.1/>
Prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
Prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#>
Prefix xsd: <http://www.w3.org/2001/XMLSchema#>
Prefix fn:<http://aksw.org/sparqlify/>
 
Create View Template geo As
    Construct {
        ?s  a gvoc:Platform.
        ?s  dcterms:title ?l2.
        ?s dcterms:identifier ?identifier.
        ?s  rdfs:label ?rlabel. 
        ?s  gvoc:gplID ?l3.
	    ?s	gvoc:status ?l4.
	    ?s	gvoc:submissionDate ?l5.
		?s	gvoc:lastUpdated ?l6.
		?s	gvoc:technology ?technology.
		?technology rdfs:label ?l7.
		?s  gvoc:distribution ?l8.
		?s  gvoc:organism ?organism.	
		?organism rdfs:label ?l9.	
	 	?s	gvoc:manufacturer ?manufacturer.
	 	?manufacturer rdfs:label ?l10.
	    ?s	gvoc:manufactureProtocol ?manufacturerprotocol.
	    ?manufacturerprotocol rdfs:label ?l11.	
    	?s  gvoc:coating ?coating.
	 	?coating rdfs:label ?l12.	    	    
	    ?s  gvoc:catalogNumber ?l13.
	    ?s  gvoc:support ?l14.
	    ?s  dcterms:description ?l15.
	    ?s  gvoc:webLink ?l16.
	    ?s  gvoc:contact ?l17.    
	}
    With
    ?s = uri(concat("http://bio2rdf.org/platform:", ?3))
	?l2 = typedLiteral(?2,xsd:string)
	?identifier = typedLiteral(concat("geo:", ?3), xsd:string)
	?rlabel = typedLiteral(concat(?2, " ", "[", "geo:", ?3, "]"), xsd:string) 
	?l3 = typedLiteral(?3,xsd:string)
	?l4 = typedLiteral(?4,xsd:string)  
	?l5 = typedLiteral(?5, xsd:date)
	?l6 = typedLiteral(?6, xsd:date)
	?technology = uri(concat("http://bio2rdf.org/geo:", ?3, "/technology"))
	?l7 = typedLiteral(?7,xsd:string)
	?l8 = typedLiteral(?8,xsd:string)
	?organism = uri(concat("http://bio2rdf.org/geo:", ?3, "/organism/", fn:urlEncode(?9)))
	?l9 = typedLiteral(?9,xsd:string)
	?manufacturer = uri(concat("http://bio2rdf.org/geo:", ?3, "/manufacturer"))
	?l10 = typedLiteral(?10,xsd:string)
	?manufacturerprotocol = uri(concat("http://bio2rdf.org/geo:", ?3, "/manufacturerProtocol"))
	?l11 = typedLiteral(?11,xsd:string)  
	?coating = uri(concat("http://bio2rdf.org/geo:", ?3, "/coating"))
	?l12 = typedLiteral(?12,xsd:string)
	?l13 = typedLiteral(?13, xsd:string)
	?l14 = typedLiteral(?14,xsd:string)
	?l15 = typedLiteral(?15,xsd:string)
	?l16 = typedLiteral(?16,xsd:string)
	?l17 = typedLiteral(?17,xsd:string)	