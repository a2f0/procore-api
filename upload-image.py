#!/usr/bin/env python3
import os
import requests

def main():
    if 'ACCESS_TOKEN' in os.environ:
        ACCESS_TOKEN=os.environ['ACCESS_TOKEN']
    else:
        print("Set the ACCESS_TOKEN environment variable.")
        exit(1)

    if 'PROJECT_ID' in os.environ:
        PROJECT_ID=os.environ['PROJECT_ID']
    else:
        print("Set the PROJECT_ID environment variable.")
        exit(1)

    url = 'https://api.procore.com/rest/v1.0/images/?project_id=' + PROJECT_ID
    headers = {
        'Authorization': 'Bearer {}'.format(ACCESS_TOKEN)
    }
    file_list = [
        ('image[data]', ('test_image.jpg', open('test_image.jpg', 'rb'), 'image/jpg')),
    ]       
    resp = requests.post(
        url,
        headers=headers,
        files=file_list
    )
    print(str(resp.json()))

main()