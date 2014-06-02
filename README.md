Archive-It-stylesheets
======================

This repository includes XSLT stylesheets for metadata export from and ingest into the Archive-It web archiving platform.

* AIfeed-DC.xsl
Transforms AI feed metadata into Simple DublinCore.

* output_all_seed_metadata_v03.xsl - extracts all existing metadata in a comma or tab-separated values file.
Extracts all existing metadata as tab-separated values. Useful for AI's import metadata "replace" option. This file can be imported to a spreadsheet where we can add new metadata as well as update / correct existing metadata.

* output_seed_URLs_and_fields.xsl - extracts all seed URLs in an AI or OAI feed, and outputs a delimiter-separated values text file containing metadata fields.
* output_doc_URLs_and_fields.xsl - extracts all seed URLs in an AI or OAI feed, and outputs a delimiter-separated values text file containing metadata fields.
Extract URLs and column headers with AI fields (ready to be imported from Excel or OpenOffice). Useful for AI's "add new metadata" import option.

* extract_seed_URLs_from_OAI_or_AI.xsl - outputs a text file listing all seed identifiers (URLs) contained in an AI feed. Useful for AI's importing "add new metadata" import option.
* extract_doc_URLs_from_AI.xsl - outputs a text file listing all document identifiers (URLs) contained in an AI feed. Document metadata is not available from OAI feeds, so I did not consider that when creating this stylesheet.
Extract just URLs. Useful for AI's importing "add new metadata" import option.

Supporting files:
* variables.xsl - contains common variables imported from all other transformations that deal with OAI or AI feeds.
* character_map.xsl - XSLT character map based on character entities DTD by Rick Jelliffe. This stylesheet maps a selection of Unicode symbols and special characters to replace entities for web archive metadata.
