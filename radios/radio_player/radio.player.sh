
curl -s  http://all.api.radio-browser.info/json/stations | jq '.[] | {tags, name , url_resolved}' # > radios.json




