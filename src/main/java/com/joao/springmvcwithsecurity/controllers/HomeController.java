package com.joao.springmvcwithsecurity.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @GetMapping("/")
    public String getHomePage() {
        return "home";
    }

    @GetMapping("/leaders")
    public String getLeaderPage() {
        return "leaders";
    }

    @GetMapping("/systems")
    public String getAdminPage() {
        return "systems";
    }
}
