require 'awspec'
require 'json'

ATTR_STRING  = File.read('spec/attributes.json')
PARSED_ATTR  = JSON.parse(ATTR_STRING)

def getAttr(key)
	PARSED_ATTR[key]
end
