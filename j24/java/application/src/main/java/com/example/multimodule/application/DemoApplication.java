package com.example.multimodule.application;

import com.example.multimodule.service.MyService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.config.annotation.method.configuration.EnableMethodSecurity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication(scanBasePackages = "com.example.multimodule")
@RestController
@EnableMethodSecurity
public class DemoApplication {

    Logger logger = LoggerFactory.getLogger(DemoApplication.class);

    private final MyService myService;
    private final SomeState someState;

    public DemoApplication(MyService myService, SomeState someState) {
        this.myService = myService;
        this.someState = someState;
    }

    public static void main(String[] args) {
        SpringApplication.run(DemoApplication.class, args);
    }

    @GetMapping("/")
    public String home() {
        return myService.message();
    }

    @GetMapping("/bla")
    @PreAuthorize("hasPermission(#someState.state, '')")
    public String bla(SomeState someState) {
        logger.info("bla {}", someState.state);

        return myService.message();
    }
}
