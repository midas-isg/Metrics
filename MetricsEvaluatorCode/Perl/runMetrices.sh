#!/usr/bin/env bash

echo '{'
echo F1A:
curl -H "Content-Type: application/json" -X POST -d '{"subject": "10.5061/dryad.gn219","spec": "https://fairsharing.org/bsg-s001182"}'  http://linkeddata.systems/cgi-bin/fair_metrics/Metrics/metric_unique_identifier
echo
echo ,
echo F1B:
curl -H "Content-Type: application/json" -X POST -d '{"subject": "10.5061/dryad.gn219","persistence_doc": "https://doi.org/10.5061/dryad.gn219"}'  http://linkeddata.systems/cgi-bin/fair_metrics/Metrics/metric_identifier_persistence
echo
echo ,
echo F2:
curl -H "Content-Type: application/json" -X POST -d '{"subject": "10.5061/dryad.gn219","metadata": "https://fairsharing.org/bsg-s001182", "format": ""}'  http://linkeddata.systems/cgi-bin/fair_metrics/Metrics/metric_machine_readable_metadata
echo
echo ,
echo F3:
curl -H "Content-Type: application/json" -X POST -d '{"subject": "10.5061/dryad.gn219","metadata": "https://doi.org/10.5061/dryad.gn219", "identifier": "10.5061/dryad.gn219"}'  http://linkeddata.systems/cgi-bin/fair_metrics/Metrics/metric_identifier_in_metadata
echo
echo ,
echo F4:
curl -H "Content-Type: application/json" -X POST -d '{"subject": "10.5061/dryad.gn219","search_uri": "https://www4.bing.com/search?q=10.5061%2Fdryad.gn219&qs=n&form=QBLH&sp=-1&pq=10.5061%2Fdryad.gn219&sc=0-19&sk=&cvid=FEC09C5AA1404CDEB062B76F00CC9180"}'  http://linkeddata.systems/cgi-bin/fair_metrics/Metrics/metric_searchable_index
echo
echo ,
echo A1_1:
curl -H "Content-Type: application/json" -X POST -d '{"subject": "10.5061/dryad.gn219","protocol_uri": "https://doi.org/10.5061/dryad.gn219"}'  http://linkeddata.systems/cgi-bin/fair_metrics/Metrics/metric_access_protocol
echo
echo ,
echo A1_2:
curl -H "Content-Type: application/json" -X POST -d '{"subject": "10.5061/dryad.gn219","spec": "https://fairsharing.org/bsg-s001182"}'  http://linkeddata.systems/cgi-bin/fair_metrics/Metrics/metric_access_authorization
echo
echo ,
echo A2:
curl -H "Content-Type: application/json" -X POST -d '{"subject": "10.5061/dryad.gn219","persistence_uri": "https://doi.org/10.5061/dryad.gn219"}'  http://linkeddata.systems/cgi-bin/fair_metrics/Metrics/metric_metadata_longevity
echo
echo ,
echo I1:
curl -H "Content-Type: application/json" -X POST -d '{"subject": "10.5061/dryad.gn219","bnf_uri": "https://en.wikipedia.org/wiki/Backus%E2%80%93Naur_form"}'  http://linkeddata.systems/cgi-bin/fair_metrics/Metrics/metric_knowledge_language
echo
echo ,
echo I2:
curl -H "Content-Type: application/json" -X POST -d '{"subject": "10.5061/dryad.gn219","vocab1_uri": "https://en.wikipedia.org/wiki/Resource_Description_Framework","vocab2_uri": "https://en.wikipedia.org/wiki/Resource_Description_Framework","vocab3_uri": "https://en.wikipedia.org/wiki/Resource_Description_Framework"}'  http://linkeddata.systems/cgi-bin/fair_metrics/Metrics/metric_fair_vocabularies
echo
echo ,
echo I3:
curl -H "Content-Type: application/json" -X POST -d '{"subject": "10.5061/dryad.gn219","linkset_uri": "http://vocab.deri.ie/void/guide"}'  http://linkeddata.systems/cgi-bin/fair_metrics/Metrics/metric_has_linkset
echo
echo ,
echo R1_1:
curl -H "Content-Type: application/json" -X POST -d '{"subject": "10.5061/dryad.gn219","datalicense_uri": "https://fairsharing.org/bsg-s001182", "metadatalicense_uri": "https://fairsharing.org/bsg-s001182"}'  http://linkeddata.systems/cgi-bin/fair_metrics/Metrics/metric_accessible_license
echo
echo ,
echo R1_2:
curl -H "Content-Type: application/json" -X POST -d '{"subject": "10.5061/dryad.gn219","prov_vocab_uri": "https://fairsharing.org/bsg-s001182"}'  http://linkeddata.systems/cgi-bin/fair_metrics/Metrics/metric_detailed_provenance_A
echo '}'
echo