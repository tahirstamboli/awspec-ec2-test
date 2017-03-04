require 'awspec'
require 'json'

Awsecrets.load(secrets_path: File.expand_path('./secrets.yml', File.dirname(__FILE__)))

ATTR_STRING  = File.read('spec/attributes.json')
PARSED_ATTR  = JSON.parse(ATTR_STRING)

def getAttr(key)
	PARSED_ATTR[key]
end
