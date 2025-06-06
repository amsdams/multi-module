package com.example.multimodule.application;

import com.example.multimodule.service.MyService;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication(scanBasePackages = "com.example.multimodule")
@RestController
public class DemoApplication {

    private final MyService myService;

    public DemoApplication(MyService myService) {
        this.myService = myService;
    }

    public static void main(String[] args) {
        SpringApplication.run(DemoApplication.class, args);
    }

    @GetMapping("/")
    @PreAuthorize("hasPermission('target', 'permission')")
    public String home() {
        System.out.println("Hello World");
        return myService.message();
    }
}
