# GEO
Transformation scripts for converting GEO to RDF.

#Raw data
Download latest DB: http://gbnci.abcc.ncifcrf.gov/geo/ SQLite3 database

#Table descriptions: https://gbnci-abcc.ncifcrf.gov/geo/geo_help.php#description

#Tables:
1. GSM
2. GSE
3. GPL
4. GDS
5. GSE_GPL
6. GSE_GSM
7. GDS_SUBSET

#Conversion 
using Sparqlify https://github.com/AKSW/Sparqlify
git clone git://github.com/AKSW/Sparqlify.git
cd Sparqlify/
git checkout devel

GSM - Channel 1 and Channel 2
java -Xmx20148m -cp sparqlify-cli-0.6.20-SNAPSHOT-jar-with-dependencies.jar org.aksw.sparqlify.csv.CsvMapperCliMain -c mappingGSM1.sml -f gsmpart1.csv > gsmChannel1.nt
java -Xmx20148m -cp sparqlify-cli-0.6.20-SNAPSHOT-jar-with-dependencies.jar org.aksw.sparqlify.csv.CsvMapperCliMain -c mappingGSM2.sml -f gsmpart1.csv > gsmChannel2.nt
 
GSM Series
java -Xmx20148m -cp sparqlify-cli-0.6.20-SNAPSHOT-jar-with-dependencies.jar org.aksw.sparqlify.csv.CsvMapperCliMain -c mappingGSM_Series.sml -f gsm_series.csv > gsmseries.nt

GDS
java -Xmx20148m -cp sparqlify-cli-0.6.20-SNAPSHOT-jar-with-dependencies.jar org.aksw.sparqlify.csv.CsvMapperCliMain -c mappingGDS.sml -f gds1.csv > gdsnew.nt

GDS_SUBSET
java -Xmx20148m -cp sparqlify-cli-0.6.20-SNAPSHOT-jar-with-dependencies.jar org.aksw.sparqlify.csv.CsvMapperCliMain -c mappingGDS_Subset.sml -f gds_subset1.csv > gds_subset_new.nt

GSE
java -Xmx20148m -cp sparqlify-cli-0.6.20-SNAPSHOT-jar-with-dependencies.jar org.aksw.sparqlify.csv.CsvMapperCliMain -c mappingGSE.sml -f gsepart1.csv > GSE.nt
GSE Summary
java -Xmx20148m -cp sparqlify-cli-0.6.20-SNAPSHOT-jar-with-dependencies.jar org.aksw.sparqlify.csv.CsvMapperCliMain -c mappingGSE1.sml -f gsepart2.csv > gseSummary.nt
GSE Contributor
java -Xmx20148m -cp sparqlify-cli-0.6.20-SNAPSHOT-jar-with-dependencies.jar org.aksw.sparqlify.csv.CsvMapperCliMain -c mappingGSE1.sml -f gsepart3.csv > gseContributor.nt
GSE Web link
java -Xmx20148m -cp sparqlify-cli-0.6.20-SNAPSHOT-jar-with-dependencies.jar org.aksw.sparqlify.csv.CsvMapperCliMain -c mappingGSE1.sml -f gsepart4.csv > gseWebLink.nt
GSE Overall Design
java -Xmx20148m -cp sparqlify-cli-0.6.20-SNAPSHOT-jar-with-dependencies.jar org.aksw.sparqlify.csv.CsvMapperCliMain -c mappingGSE1.sml -f gsepart5.csv > gseOverallDesign.nt
 
GSE_GSM
java -Xmx20148m -cp sparqlify-cli-0.6.20-SNAPSHOT-jar-with-dependencies.jar org.aksw.sparqlify.csv.CsvMapperCliMain -c mappingGSE1.sml -f gse_gsm.csv > gse_gsm.nt

GSE_GPL
java -Xmx20148m -cp sparqlify-cli-0.6.20-SNAPSHOT-jar-with-dependencies.jar org.aksw.sparqlify.csv.CsvMapperCliMain -c mappingGSE1.sml -f gse_gpl.csv > gse_gpl.nt

GPL
java -Xmx20148m -cp sparqlify-cli-0.6.20-SNAPSHOT-jar-with-dependencies.jar org.aksw.sparqlify.csv.CsvMapperCliMain -c mappingGPL.sml -f gpl.csv > gplnew.nt
