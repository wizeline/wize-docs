# Image Application Challenge

This is a *guide* for presenting the challenge to the candidate, *not* a document to give to the candidate.

## Overview

Create an application that displayed images from our wrapper imgur API

## Critical Points
- Display images as a list
- Display the full detail of an image

## Important Points
- Display images in a list with 2 columns and flexible height adjustment (as Pinterest)
- Application provides function to share image
- Post a new image from device

## Bonus Points
- User are able to download image into device's gallery
- Nice transition animation
- Display GIF images
- Save favorite images to local application's DB

## Endpoints
- Base URL `https://wzimgur.herokuapp.com`
- Login
  * POST `/login`
  * Sample `curl -vs -X POST https://wzimgur.herokuapp.com/login -F username=wizeline`
- Get Images
  * GET `/image`
  * Sample `curl -X GET \
  https://wzimgur.herokuapp.com/image \
  -H 'authorization: bearer your-token' \
  -H 'cache-control: no-cache'
`
- Get Thumbnail by ImageId
  * GET `/image/{imageId}`
  * Sample `curl -X GET \
  https://wzimgur.herokuapp.com/image/kaq3pry \
  -H 'authorization: bearer your-token' \
  -H 'cache-control: no-cache' `
| Thumbnail Suffix | Thumbnail Name   | Thumbnail Size | Keeps Image Proportions |
|------------------|------------------|----------------|-------------------------|
| s                | Small Square     | 90x90          | No                      |
| b                | Big Square       | 160x160        | No                      |
| t                | Small Thumbnail  | 160x160        | Yes                     |
| m                | Medium Thumbnail | 320x320        | Yes                     |
| l                | Large Thumbnail  | 640x640        | Yes                     |
| h                | Huge Thumbnail   | 1024x1024      | Yes                     |

- Add a new Image
  * GET `/thumbnail?imageId={id}&size={thumbSuffix}`
  * Sample `curl -X GET \
  'https://wzimgur.herokuapp.com/thumbnail?imageId=JOpbgQ3&size=h' \
  -H 'cache-control: no-cache'
`

## UI Mockups
- Home screen
![index](index.png)
![index](index2.png)

- Image Detail screen
![detail](full-screen-image-v2.png)

- Add Image screen
![add](add-image.png)
