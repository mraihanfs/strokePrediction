# Stroke Prediction App

App that can use to predict some one if they have risk or not have stroke disease in their body. This app use ML algorithm to take inference form the data that came from user input and collaborate with android so anyone who had android can use this apps

## Getting Started

You can download all the code in this repo, but for running certain file you need to install some of software

### Prerequisites

1. Jupyter notebook (Sklearn, Python3.x, Tensorflow, Matplotlib, pickle, Seaborn, and jupyter notebook / [colab](colab.research.google.com) 

```
pip install sklearn
pip install tensorflow
pip install matplotlib
pip install seaborn
pip install notebook
pip install pickle
```
2. Android (Android studio, JDK, Gradle, and Android emulator or android physical device)

3. Backend (Sklearn, Python3.x, Tensorflow, pickle, and flask)

```
pip install flask
```

### Installing

For install the android app you can find it in Android/AIDu.apk download it and install on your physical device or emulator

## Step to make this app
1. Download the dataset from [kaggle.com](https://www.kaggle.com/fedesoriano/stroke-prediction-dataset)
2. EDA on dataset 
3. Cleaning dataset 
4. Preprocessing dataset
5. Make model with tensorlow and sklearn
6. Compare with another algorithm 
7. Export model that we choose 
8. Make Backend with flask 
9. Deploy using cloud run (docker) with our endpoint (https://aidu-5kiev53etq-et.a.run.app/) if you wan to try send with data you can send with Postman API send with method post and using header x-www-form-urlencoded with this endpoint (https://aidu-5kiev53etq-et.a.run.app//predictdnn) and the data must be like this 

|Key Data|Type Data|
|--------|---------|
|gender|string("Pria", "Wanita")|
|age|int|
|hip| string("Ya", "Tidak")|
|heart| string("Ya", "Tidak")|
|married| string("Ya", "Tidak")|
|rumah| string("Kota", "Desa")|
|weight|double|
|height|double|
|work|string("Pemerintah", "Tidak Bekerja", "Pegawai Swasta", "Wirausaha", "Anak - anak")
|glu|double|
|smoke|string("Tidak diketahui", "Mantan perokok", "Tidak pernah merokok", "Merokok")

## Authors

* **Muhammad Raihan Fais Sya' bani** - *writer of README.md*
See also the list of [contributors](https://github.com/mraihanfs/strokePrediction/contributors) who participated in this project.
