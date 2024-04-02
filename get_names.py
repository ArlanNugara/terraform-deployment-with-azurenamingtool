import json
import sys

get_file = open('name.json')
load_json = json.loads(get_file.read())
if load_json["success"] == True:
    resource_name = load_json["resourceName"]
    print(resource_name)
else:
    resource_name = "Name not generated. Please check error message - "+load_json["message"]+""
    print(resource_name)
    sys.exit(1)