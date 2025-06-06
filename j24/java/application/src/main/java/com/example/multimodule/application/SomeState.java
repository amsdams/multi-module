package com.example.multimodule.application;

import org.springframework.stereotype.Component;

@Component
public class SomeState {
    public String state;

    public SomeState() {
        this.state="ok";
    }

}
