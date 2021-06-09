import json
import pickle
from tensorflow.keras.models import load_model
import numpy as np

from flask import Flask, request

app = Flask(__name__)

# Loadding naive bayes model 

modelName = 'nbmodel.pkl'

with open (modelName, 'rb') as input :
    strokeNB = pickle.load(input)

# Loadding DNN model 
modelDNN = load_model('linearDNN')

# Function for preprocessing data before we process it predict
def gender (value):
    if value == "Pria" :
        return 1
    return 0

def rb(value):
    if value == "Ya":
        return 1
    return 0

def tinggal(value):
    if value == "Kota" :
        return 1
    return 0

def BMI (berat, tinggi) :
    return round(berat/((tinggi*0.01)**2), 2)

def work_type(value):
    if value == 'Pemerintah' :
        return [1,0,0,0,0]
    elif value == "Tidak Bekerja" :
        return [0,1,0,0,0]
    elif value == "Pegawai Swasta":
        return [0,0,1,0,0]
    elif value == "Wirausaha":
        return [0,0,0,1,0]
    elif value == "Anak - anak":
        return [0,0,0,0,1]

def glucose(i) :
    if i < 70 :
        return [0,0,1,0]
    elif i>=70 and i<140 :
        return [0,0,0,1]
    elif i>=140 and i<200:
      return [0,1,0,0]
    else:
        return [1,0,0,0]

def smoke(value) :
    if value == "Tidak diketahui" :
        return [1,0,0,0]
    elif value == "Mantan perokok" :
        return [0,1,0,0]
    elif value == "Tidak pernah merokok" :
        return [0,0,1,0]
    elif value == "Merokok" :
        return [0,0,0,1]

def predictvalue(predict_file) :
    predict = []
    jk = gender(predict_file.get("gender"))
    age = float(predict_file.get("age"))
    hip = rb(predict_file.get("hip"))
    heart = rb(predict_file.get("heart"))
    nikah = rb(predict_file.get("married"))
    rumah = tinggal(predict_file.get("rumah"))
    bmi = BMI(float(predict_file.get("weight")),float(predict_file.get("height")))
    tipe = work_type(predict_file.get("work"))
    glublood = glucose(float(predict_file.get("glu")))
    smokestat = smoke(predict_file.get("smoke"))
    predict += [jk, age, hip, heart, nikah, rumah, bmi]
    predict.extend(tipe)
    predict.extend(glublood)
    predict.extend(smokestat)
    return predict

# endpoint 
@app.route('/')
def hello_world ():
    return('Hello World!')

# endpoint for predict with naive bayes algorithm in here we need to input data with json format file
@app.route("/predictnb", methods=["POST"])
def predictnb() :
    predict_file = request.form
    print(predict_file.get('gender'))
    predict_file = predictvalue(predict_file)
    predict_file = np.array(predict_file).reshape(1, len(predict_file))
    Y_predict = modelName.predict(predict_file)
    hasil = "Beresiko" if Y_predict >.5 else "Kurang beresiko"
    print('data : {}'.format(predict_file))
    print('type : {}'.format(type(predict_file)))
    print('Hasil prediksi : '+ str(Y_predict))
    response = {
        "predict_result" : hasil
    }
    return json.dumps(response)

# endpoint for predict with DNN algortihm in here we need to input data with json format file
@app.route('/predictdnn', methods=['POST'])
def predict_dnn ():
    predict_file = request.form
    print(predict_file.get('gender'))
    predict_file = predictvalue(predict_file)
    predict_file = np.array(predict_file).reshape(1, len(predict_file))
    Y_predict = modelDNN.predict(predict_file)
    hasil = "Beresiko" if Y_predict >.5 else "Kurang beresiko"
    print('data : {}'.format(predict_file))
    print('type : {}'.format(type(predict_file)))
    print('Hasil prediksi : '+ str(Y_predict))
    response = {
        "predict_result" : hasil
    }
    return json.dumps(response)
if __name__ == '__main__' :
    app.run(host='0.0.0.0', port=5000, debug=True)