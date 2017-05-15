package ru.inbox.savinov_vu.controller.page;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import ru.inbox.savinov_vu.model.Person;
import ru.inbox.savinov_vu.service.PersonService;

import javax.servlet.http.HttpServletRequest;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

@Controller
@Slf4j
public class PersonFreemarkerController {

    @Autowired
    PersonService personService;


    @GetMapping("/markWithFreemarker")
    public String getAll(Model model) {
        log.debug("\nget person table with freemarker");
        model.addAttribute("persons", personService.getAll());
        return "crudWithFreemarker/person";
    }

    @GetMapping("/add")
    public String add(Model model, HttpServletRequest request) {
        log.debug("\nadd person");
        String login = request.getParameter("login");
        String password = request.getParameter("password");
        String birthdate = request.getParameter("birthdate");
        LocalDate date = LocalDate.parse(birthdate, DateTimeFormatter.ofPattern("yyyy-MM-dd"));
        Person person = personService.add(new Person(login, password, date));
        log.debug(person + " added in bd");
        return "redirect:/markWithFreemarker";
    }

}
