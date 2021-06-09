### GCP Build & Deploy

adams-project-313408

## Building container image

1. Using this command to build container Image.
   `gcloud builds submit --tag gcr.io/<YOUR-PROJECT-ID>/predictdnn`
2. Change `<YOUR-PROJECT-ID>` with your project ID.
3. Wait until the process is done.

## Deploy container image to Cloud Run

1. After building container image is done Using this command to deploy container image into the Cloud Run.
   `gcloud run deploy --image gcr.io/<YOUR-PROJECT-ID>/predictdnn --platform managed`
2. Type your Service Name, for the example is `aidu`, enter.
3. Then specify a region with type the number, for the example type `8` to make the specify region at `asia-southeast2`, if you done it press enter.
4. Wait until the process is complete.
5. To test your app please go to the web page listed on the service url, if the message is `hello world` then your deploying app have been successful.

## Test Predict at Postman

1. Get Postman at [Postman](https://www.postman.com/downloads/).
2. Open Postman. Choose `POST` method and enter `<YOUR-SERVICE-URL>/predict_dnn` at URL column. Change `YOUR-SERVICE-URL` with your service URL.
3. Choose `Body`-->`x-www-form-urlencoded` and enter this Value:Key into the column.

```gender:Pria
age:45
hip:Ya
heart:Ya
married:Tidak
rumah:Desa
weight:55
height:169
work:Wirausaha
glu:250
smoke:Tidak pernah merokok
```

4. Then click `Send'.
5. See the result. The result must be `{"predict_result": "Kurang beresiko"}`.
