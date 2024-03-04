#!/bin/bash

# minikube stop

# doctl kubernetes cluster kubeconfig save 4a2c4da2-55b7-4dd0-9dc2-06d524fdf9c6

# curl --location \
# --request POST "https://circleci.com/api/v2/project/github/handsomefencer/story_store/schedule" \
# --header "circle-token: <PERSONAL_API_KEY>" \
# --header "Content-Type: application/json" \
# --data-raw '{
#     "name": "my schedule name",
#     "description": "some description",
#     "attribution-actor": "system",
#     "parameters": {
#       "branch": "main"
#       <additional pipeline parameters can be added here>
#     },
#     "timetable": {
#         "per-hour": 3,
#         "hours-of-day": [1,15],
#         "days-of-week": ["MON", "WED"]
#     }
# }'


# doctl app update ${DIGITALOCEAN_APP_ID} --spec do-spec-small.json 
doctl app update b01b1728-ad40-4e0b-b87a-a0d49da6a2ff --spec do-spec-small.json 
            