package com.example.aidu

import retrofit2.Call
import retrofit2.http.Field
import retrofit2.http.FormUrlEncoded
import retrofit2.http.POST

interface ApiService {
    @FormUrlEncoded
    @POST("predictdnn")
    fun postData(
        @Field("gender") gender: String,
        @Field("age") age: Int,
        @Field("hip") hip: String,
        @Field("heart") heart: String,
        @Field("married") married: String,
        @Field("rumah") rumah: String,
        @Field("weight") weight: Double,
        @Field("height") height: Double,
        @Field("work") work: String,
        @Field("glu") glu: Double,
        @Field("smoke") smoke: String
    ): Call<DataInput>
}