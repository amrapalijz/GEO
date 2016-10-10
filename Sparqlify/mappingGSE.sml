Prefix geo: <http://bio2rdf.org/geo:>
Prefix gvoc: <http://bio2rdf.org/geo_vocabulary:>
Prefix dcterms:<http://purl.org/dc/elements/1.1/>
Prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
Prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#>
Prefix xsd: <http://www.w3.org/2001/XMLSchema#>
 
Create View Template geo As
    Construct {
        ?s  a gvoc:Series.
        ?s  dcterms:title ?l2.
        ?s  a gvoc:Resource.
        ?s  dcterms:identifier ?identifier.
        ?s  rdfs:label ?rlabel.
        ?s  gvoc:gseID ?l3.
	    ?s	gvoc:status ?l4.
	    ?s	gvoc:submissionDate ?l5.
		?s	gvoc:lastUpdateDate ?l6.
		?s	gvoc:pubmedID ?l7.
		?l7 rdfs:label ?label1.
		?s  gvoc:type ?seriestype.
		?seriestype rdfs:label ?l8.
		?s  gvoc:repeats ?l9.		
	 	?s	gvoc:repeatsSampleList ?l10.
	    ?s	gvoc:variable ?l11.	
    	?s  gvoc:variableDescription ?l12.	    	    
   }
    With
    ?s = uri(concat("http://bio2rdf.org/geo:", ?3))
	?l2 = typedLiteral(?2,xsd:string)
	?identifier = typedLiteral(concat("geo:", ?3), xsd:string)
	?rlabel = typedLiteral(concat(?2, " ", "[", "geo:", ?3, "]"), xsd:string) 
	?l3 = typedLiteral(?3,xsd:string)
	?l4 = typedLiteral(?4,xsd:string)  
	?l5 = typedLiteral(?5, xsd:date)
	?l6 = typedLiteral(?6, xsd:date)
	?l7 = uri(concat("http://bio2rdf.org/pubmed:", ?7))
	?label1 = typedLiteral(?7,xsd:string)
	?seriestype = uri("http://bio2rdf.org/geo:", ?3, "/type")
	?l8 = typedLiteral(?8,xsd:string)
	?l9 = typedLiteral(?9,xsd:string)
	?l10 = typedLiteral(?10,xsd:string)
	?l11 = typedLiteral(?11,xsd:string)   
	?l12 = typedLiteral(?12,xsd:string)