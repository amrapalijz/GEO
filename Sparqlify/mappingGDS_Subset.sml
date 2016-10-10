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
        ?s  bvoc:namespace ?vocab.
        ?s  a gvoc:Resource.
        ?s  dcterms:title ?l2.
        ?s  dcterms:identifier ?identifier.
        ?s  rdfs:label ?rlabel.
        ?s  bvoc:uri ?uri.
        ?s  gvoc:gdsID ?l3.
        ?s	dcterms:description ?l4.
	    ?s	gvoc:contains ?l5.
		?s	gvoc:type ?type.
		?type rdfs:label ?l6.

   }
    With
    ?s = uri(concat("http://bio2rdf.org/geo:", ?3))
    ?vocab = typedLiteral("geo",xsd:string)
	?l2 = typedLiteral(?2, xsd:string)
	?l3 = typedLiteral(?3, xsd:string)
	?identifier = typedLiteral(concat("geo:", ?3), xsd:string)
	?rlabel = typedLiteral(concat(?2, " ", "[", "geo:", ?3, "]"), xsd:string) 
	?uri = typedLiteral(concat("http://bio2rdf.org/geo:", ?3), xsd:string)
	?l4 = typedLiteral(?4, xsd:string)  
	?l5 = uri(concat("http://bio2rdf.org/geo:", ?5))
	?type = uri(concat("http://bio2rdf.org/geo:", ?3, "/type/", fn:urlEncode(?6)))
	?l6 = typedLiteral(?6, xsd:string)
