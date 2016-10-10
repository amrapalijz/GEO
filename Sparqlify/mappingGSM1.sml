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
		?s	gvoc:referencedBy ?l5.
		?s	gvoc:status ?l6.
		?s  gvoc:submissionDate ?l7.
		?s  gvoc:lastUpdated ?l8.		
	 	?s	gvoc:type ?type.
	 	?type rdfs:label ?l9.
	    ?s	gvoc:sourceName ?sourcename.
	    ?sourcename rdfs:label ?l10.
	    ?sourcename dcterms:isPartOf ?channel1.	
    	?s  gvoc:organism ?organism.	
    	?organism rdfs:label ?l11.  
    	?organism dcterms:isPartOf ?channel1.  	    
	    ?s  gvoc:molecule ?molecule.
	    ?molecule  rdf:type sio:011125.
	    ?molecule rdfs:label ?l12.
	    ?molecule dcterms:isPartOf ?channel1.
	    ?s  gvoc:label ?samplelabel.
	    ?samplelabel rdfs:label ?l13.
	    ?s  gvoc:treatmentProtocol ?tprotocol.
	    ?tprotocol  dcterms:description ?l14.
	    ?s  gvoc:extractionProtocol ?eprotocol.
	    ?eprotocol  dcterms:description ?l15.
	    ?s  gvoc:labelProtocol ?lprotocol.
	    ?lprotocol  dcterms:description ?l16.
	    ?l13 dcterms:isPartOf ?channel1.
	    ?l14 dcterms:isPartOf ?channel1.
	    ?l15 dcterms:isPartOf ?channel1.
	    ?l16 dcterms:isPartOf ?channel1.
    }
    With
    ?s = uri(concat("http://bio2rdf.org/geo:", ?3))
	?l2 = typedLiteral(?2,xsd:string)
	?identifier = typedLiteral(concat("geo:", ?3), xsd:string)
	?rlabel = typedLiteral(concat(?2, " ", "[", "geo:", ?3, "]"), xsd:string) 
	?l3 = typedLiteral(?3,xsd:string)
	?l5 = uri(concat("http://bio2rdf.org/geo:", ?5))
	?l6 = typedLiteral(?6,xsd:string)
	?l7 = typedLiteral(?7, xsd:dateTime)
	?l8 = typedLiteral(?8, xsd:dateTime)
	?type = uri(concat("http://bio2rdf.org/geo:", ?3, "/type"))
	?l9 = typedLiteral(?9,xsd:string)
	?sourcename = uri(concat("http://bio2rdf.org/geo:", ?3, "/sourceName"))
	?l10 = typedLiteral(?10, "en")
	?organism = uri(concat("http://bio2rdf.org/geo:", ?3, "/organism/", fn:urlEncode(?11)))  
	?l11 = typedLiteral(?11,xsd:string)
	?molecule = uri(concat("http://bio2rdf.org/geo:", ?3, "/molecule")) 
	?l12 = typedLiteral(?12,xsd:string)
	?samplelabel = uri(concat("http://bio2rdf.org/geo:", ?3, "/label"))
	?l13 = typedLiteral(?13,xsd:string)
	?tprotocol = uri(concat("http://bio2rdf.org/geo:", ?3, "/treatmentProtocol"))
	?l14 = typedLiteral(?14,xsd:string)
	?eprotocol = uri(concat("http://bio2rdf.org/geo:", ?3, "/extractionProtocol"))	
	?l15 = typedLiteral(?15,xsd:string)
	?lprotocol = uri(concat("http://bio2rdf.org/geo:", ?3, "/labelProtocol"))
	?l16 = typedLiteral(?16,xsd:string)
	?channel1 = uri("http://bio2rdf.org/geo/channel1")