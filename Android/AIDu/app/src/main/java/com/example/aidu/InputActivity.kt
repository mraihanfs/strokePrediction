package com.example.aidu

import android.os.Bundle
import android.view.View
import android.widget.*
import androidx.appcompat.app.AppCompatActivity
import com.google.android.gms.auth.api.signin.GoogleSignIn
import retrofit2.Call
import retrofit2.Callback
import retrofit2.Response

class InputActivity : AppCompatActivity() {
    val works = listOf("Pemerintah", "Tidak Bekerja", "Pegawai Swasta", "Wirausaha", "Anak - anak")
    val smokes = listOf("Tidak diketahui", "Mantan perokok", "Tidak pernah merokok", "Merokok")
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_input)

        val age: EditText = findViewById(R.id.age)
        val genderR: RadioGroup = findViewById(R.id.genderoption)
        val hiperR: RadioGroup = findViewById(R.id.hiperoption)
        val heartR: RadioGroup = findViewById(R.id.heartoption)
        val marryR: RadioGroup = findViewById(R.id.marriedoption)
        val homeR: RadioGroup = findViewById(R.id.homeoption)
        val height: EditText = findViewById(R.id.height)
        val weight: EditText = findViewById(R.id.weight)
        val glucose: EditText = findViewById(R.id.sb)
        val resultText: TextView = findViewById(R.id.hasilText)

        val intro: TextView = findViewById(R.id.hallo)
        val acct = GoogleSignIn.getLastSignedInAccount(this)
        if (acct != null) {
            val personName = acct.displayName
            intro.text = "Hallo, ${personName}"
        }
        val arrayAdapter = ArrayAdapter(
            this, android.R.layout.simple_spinner_dropdown_item,
            works
        )
        val spinner: Spinner = findViewById(R.id.spinner)
        var work = ""
        spinner.adapter = arrayAdapter
        spinner.onItemSelectedListener = object : AdapterView.OnItemSelectedListener {
            override fun onItemSelected(
                parent: AdapterView<*>?,
                view: View?,
                position: Int,
                id: Long
            ) {
                work = works[position]
            }

            override fun onNothingSelected(parent: AdapterView<*>?) {
                TODO("Not yet implemented")
            }
        }
        val arrayAdapter2 = ArrayAdapter(
            this, android.R.layout.simple_spinner_dropdown_item,
            smokes
        )
        val smokeSpinner: Spinner = findViewById(R.id.smokespinner)
        var smoke = ""
        smokeSpinner.adapter = arrayAdapter2
        smokeSpinner.onItemSelectedListener = object : AdapterView.OnItemSelectedListener {
            override fun onItemSelected(
                parent: AdapterView<*>?,
                view: View?,
                position: Int,
                id: Long
            ) {
                smoke = smokes[position]
            }

            override fun onNothingSelected(parent: AdapterView<*>?) {
            }
        }
        val predictBtn: Button = findViewById(R.id.predict_btn)
        predictBtn.setOnClickListener {

            val numAge = age.text.toString().toInt()

            val gender = when (genderR.checkedRadioButtonId) {
                R.id.maleoption -> "Pria"
                else -> "Perempuan"
            }

            val hiper = when (hiperR.checkedRadioButtonId) {
                R.id.hiperyaoption -> "Ya"
                else -> "Tidak"
            }

            val heart = when (heartR.checkedRadioButtonId) {
                R.id.heartyaoption -> "Ya"
                else -> "Tidak"
            }

            val marry = when (marryR.checkedRadioButtonId) {
                R.id.maryaoption -> "Ya"
                else -> "Tidak"
            }

            val home = when (homeR.checkedRadioButtonId) {
                R.id.kotaoption -> "Kota"
                else -> "Desa"
            }

            val numHeight = height.text.toString().toDouble()

            val numWeight = weight.text.toString().toDouble()

            val numGlusoce = glucose.text.toString().toDouble()

            Toast.makeText(applicationContext, "Mohon menunggu beberapa saat", Toast.LENGTH_SHORT).show()

            val client = ApiConfig.getApiService().postData(
                gender,
                numAge,
                hiper,
                heart,
                marry,
                home,
                numWeight,
                numHeight,
                work,
                numGlusoce,
                smoke
            )
            client.enqueue(object : Callback<DataInput> {
                override fun onResponse(call: Call<DataInput>, response: Response<DataInput>) {
                    if (response.isSuccessful) {
                        val result = response.body()
                        resultText.text = result?.result
                    }
                }

                override fun onFailure(call: Call<DataInput>, t: Throwable) {
                    val text = t.toString()
                    val duration = Toast.LENGTH_SHORT
                    Toast.makeText(applicationContext, text, duration).show()
                }
            })
        }

        val deleteBtn: Button = findViewById(R.id.delete_btn)
        deleteBtn.setOnClickListener {
            age.text = null
            genderR.clearCheck()
            hiperR.clearCheck()
            heartR.clearCheck()
            marryR.clearCheck()
            homeR.clearCheck()
            height.text = null
            weight.text = null
            glucose.text = null
            resultText.text = null
            age.requestFocus()
        }
    }
}


