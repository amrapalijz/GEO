Prefix geo: <http://bio2rdf.org/geo:>
Prefix gvoc: <http://bio2rdf.org/geo_vocabulary:>
Prefix bvoc: <http://bio2rdf.org/bio2rdf_vocabulary:>
Prefix dcterms:<http://purl.org/dc/elements/1.1/>
Prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
Prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#>
Prefix xsd: <http://www.w3.org/2001/XMLSchema#>
 
Create View Template geo As
    Construct {
        ?s  a gvoc:Series.
        ?s  gvoc:referencedBy ?gpl.  	    
   }
    With
    ?s = uri(concat("http://bio2rdf.org/geo:", ?1))
	?l1 = plainLiteral(?1)
	?gpl = uri(concat("http://bio2rdf.org/geo:", ?2))
	?l2 = plainLiteral(?2)

	
	
	