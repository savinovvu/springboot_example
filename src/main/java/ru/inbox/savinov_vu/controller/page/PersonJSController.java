package ru.inbox.savinov_vu.controller.page;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
@Slf4j
public class PersonJSController {

    @GetMapping("/markWithJS")
    public String getAll(Model model) {
        log.debug("\nget person table with js");
        return "crudWithJS/person";
    }
}
