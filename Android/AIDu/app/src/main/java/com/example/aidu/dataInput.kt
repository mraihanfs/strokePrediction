package com.example.aidu

import com.google.gson.annotations.SerializedName

data class Data(

	@field:SerializedName("glu")
	val glu: Int? = null,

	@field:SerializedName("gender")
	val gender: String? = null,

	@field:SerializedName("work")
	val work: String? = null,

	@field:SerializedName("smoke")
	val smoke: String? = null,

	@field:SerializedName("weight")
	val weight: Int? = null,

	@field:SerializedName("rumah")
	val rumah: String? = null,

	@field:SerializedName("married")
	val married: String? = null,

	@field:SerializedName("age")
	val age: Int? = null,

	@field:SerializedName("hip")
	val hip: String? = null,

	@field:SerializedName("heart")
	val heart: String? = null,

	@field:SerializedName("height")
	val height: Int? = null
)

data class DataInput(

	@field:SerializedName("data")
	val data: Data? = null,
	@field:SerializedName("predict_result")
	val result: String? = null

)
