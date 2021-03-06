#!/bin/sh
echo  ==============================================================================
echo  :: Cayman Theme :: updating website.
pandoc  --no-highlight \
        --lua-filter=task-list.lua \
        --from       markdown_github+smart+yaml_metadata_block+auto_identifiers \
        --to         html5 \
        --template   ./cayman.template \
        --output     ./index.html \
        ../web_page.md ./configuration.yaml
