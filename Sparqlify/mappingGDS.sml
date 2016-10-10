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
        ?s  a gvoc:Dataset.
        ?s  gvoc:gdsID ?l2.
        ?s  a gvoc:Resource.
        ?s dcterms:identifier ?identifier.
        ?s  rdfs:label ?rlabel. 
        ?s  dcterms:title ?l3.
	    ?s	gvoc:description ?l4.
	    ?s	gvoc:type ?type.
	    ?type rdfs:label ?l5.
		?s	gvoc:pubmedID ?pubmed.
		?s	gvoc:gplID ?l7.
		?s  gvoc:platformOrganism ?porga.
		?porga rdfs:label ?l8.
		?s  gvoc:platformTechnologyType ?ptech.
		?ptech rdfs:label ?l9.		
	 	?s	gvoc:featureCount ?l10.
	    ?s	gvoc:sampleOrganism ?sorga.
	    ?sorga rdfs:label ?l11.	
    	?s  gvoc:sampleType ?sampletype.
    	?sampletype rdfs:label ?l12.	    	    
	    ?s  gvoc:channelCount ?l13.
	    ?s  gvoc:sampleCount ?l14.
	    ?s  gvoc:valueType ?vtype.
	    ?vtype rdfs:label ?l15.
	    ?s  gvoc:associatedWith ?l16.
	    ?s  gvoc:order ?order.
	    ?order rdfs:label ?l17.
	    ?s	gvoc:updateDate ?l18.
   }
    With
    ?s = uri(concat("http://geo.bio2rdf.org/geo:", ?2))
	?l2 = typedLiteral(?2,xsd:string)
	?identifier = typedLiteral(concat("geo:", ?2), xsd:string)
	?rlabel = typedLiteral(concat(?3, " ", "[", "geo:", ?2, "]"), xsd:string) 
	?l3 = typedLiteral(?3,xsd:string)
	?l4 = typedLiteral(?4,xsd:string)
	?type = uri(concat("http://bio2rdf.org/geo:", ?2, "/type"))
	?l5 = typedLiteral(?5,xsd:string)
	?pubmed = uri(concat("http://bio2rdf.org/pubmed:", ?6))
	?l7 = uri(concat("http://geo.bio2rdf.org/geo:", ?7))	
	?porga = uri(concat("http://bio2rdf.org/geo:", ?2, "/organism", fn:urlEncode(?8)))
	?l8 = typedLiteral(?8,xsd:string)
	?ptech = uri(concat("http://bio2rdf.org/geo:", ?2, "/platformTechnologyType"))
	?l9 = typedLiteral(?9,xsd:string)
	?l10 = typedLiteral(?10,xsd:string)
	?sorga = uri(concat("http://bio2rdf.org/geo:", ?2, "/organism", fn:urlEncode(?11)))
	?l11 = typedLiteral(?11,xsd:string)   
	?sampletype = uri(concat("http://bio2rdf.org/geo:", ?2, "/sampletype"))
	?l12 = typedLiteral(?12,xsd:string)
	?l13 = typedLiteral(?13,xsd:string)
	?l14 = typedLiteral(?14,xsd:string)
	?vtype = uri(concat("http://bio2rdf.org/geo:", ?2, "/valueType", fn:urlEncode(?15)))	
	?l15 = typedLiteral(?15,xsd:string)
	?l16 = uri(concat("http://geo.bio2rdf.org/geo:", ?16))
	?order = uri(concat("http://bio2rdf.org/geo:", ?2, "/order", fn:urlEncode(?17)))
	?l17 = typedLiteral(?17,xsd:string)
	?l18 = typedLiteral(?18, xsd:date)	