from datetime import datetime
import falcon
import json
import os

class Router:
    def __init__(self):
        pass

    def on_post(self, req, res):
        print("POST REQUESTED")

        content = {
            "name": req.media['name'],
            "ref": req.media['ref']    
        }
        
        res.body = json.dumps(content)
        res.status = falcon.HTTP_201
        return None



app = falcon.API()
app.add_route('/', Router(), suffix='')