package com.example.multimodule.service

import org.assertj.core.api.Assertions
import org.junit.jupiter.api.Test
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.test.context.SpringBootTest

@SpringBootTest("service.message=Hello")
class MyServiceTest {
    @Autowired
    private val myService: MyService? = null

    @Test
    fun contextLoads() {
        Assertions.assertThat(myService!!.message()).isNotNull()
    }

    @SpringBootApplication
    internal open class TestConfiguration
}
