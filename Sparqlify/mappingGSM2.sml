Prefix geo: <http://bio2rdf.org/geo:>
Prefix gvoc: <http://bio2rdf.org/geo_vocabulary:>
Prefix dcterms:<http://purl.org/dc/elements/1.1/>
Prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns/>
Prefix rdfs: <http://www.w3.org/2000/01/rdf-schema/>
Prefix xsd: <http://www.w3.org/2001/XMLSchema/>
Prefix fn:<http://aksw.org/sparqlify/>
Prefix sio:<http://semanticscience.org/resource/>
 
Create View Template geo As
    Construct {
        ?s  a gvoc:Sample.
        ?s  dcterms:title ?l2.
	    ?s	gvoc:gsmID ?l3.
	    ?s  dcterms:identifier ?identifier.
        ?s  rdfs:label ?rlabel.
	    ?s	gvoc:sourceName ?sourcename1.
	    ?sourcename1 rdfs:label ?l17.
	    ?s  gvoc:organism ?organism1.
	    ?organism1 rdfs:label ?l18.	    	    
	    ?s  gvoc:molecule ?molecule1.
	    ?molecule1  rdf:type sio:011125.
	    ?molecule1 rdfs:label ?l19.
	    ?s  gvoc:label ?samplelabel1.
	    ?samplelabel1 rdfs:label ?l20.
	    ?s  gvoc:treatmentProtocol  ?tprotocol1. 	    
	    ?tprotocol1  dcterms:description ?l21.
	    ?s  gvoc:extractionProtocol ?eprotocol1.
	    ?eprotocol1  dcterms:description ?l22.
	    ?s  gvoc:labelProtocol ?lprotocol1.
	    ?lprotocol1  dcterms:description ?l23.	
	    ?s  gvoc:hybridizationProtocol ?hprotocol.
	    ?hprotocol  dcterms:description ?l24.	    	    			
		?17 dcterms:isPartOf ?channel2.
		?18 dcterms:isPartOf ?channel2.
		?19 dcterms:isPartOf ?channel2.
		?20 dcterms:isPartOf ?channel2.
		?21 dcterms:isPartOf ?channel2.
		?22 dcterms:isPartOf ?channel2.
		?23 dcterms:isPartOf ?channel2.						
		?24 dcterms:isPartOf ?channel2.
    }
    With
    ?s = uri(concat("http://bio2rdf.org/geo:", ?3))
	?l3 = typedLiteral(?3,xsd:string)
	?identifier = typedLiteral(concat("geo:", ?3), xsd:string)
	?rlabel = typedLiteral(concat(?2, " ", "[", "geo:", ?3, "]"), xsd:string) 
	?sourcename1 = uri(concat("http://bio2rdf.org/geo:", ?3, "/sourceName"))
	?l17 = typedLiteral(?17, "en")
	?organism1 = uri(concat("http://bio2rdf.org/geo:", ?3, "/organism/", fn:urlEncode(?18)))  
	?l18 = typedLiteral(?18,xsd:string)
	?molecule1 = uri(concat("http://bio2rdf.org/geo:", ?3, "/molecule")) 
	?l19 = typedLiteral(?19,xsd:string)
	?samplelabel1 = uri(concat("http://bio2rdf.org/geo:", ?3, "/label"))
	?l20 = typedLiteral(?20,xsd:string)
	?tprotocol1 = uri(concat("http://bio2rdf.org/geo:", ?3, "/treatmentProtocol"))
	?l21 = typedLiteral(?21,xsd:string)
	?eprotocol1 = uri(concat("http://bio2rdf.org/geo:", ?3, "/extractionProtocol"))	
	?l22 = typedLiteral(?22,xsd:string)
	?lprotocol1 = uri(concat("http://bio2rdf.org/geo:", ?3, "/labelProtocol"))
	?l23 = typedLiteral(?23,xsd:string)
	?hprotocol = uri(concat("http://bio2rdf.org/geo:", ?3, "/hybridizationProtocol"))
	?l24 = typedLiteral(?24,xsd:string)
	?channel2 = uri("http://bio2rdf.org/geo/channel2")