package ru.inbox.savinov_vu.controller.page;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import ru.inbox.savinov_vu.model.Person;
import ru.inbox.savinov_vu.service.PersonService;

import javax.servlet.http.HttpServletRequest;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Objects;

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

    @PostMapping("/add")
    public String add(Model model, HttpServletRequest request) {
        log.debug("\nadd person");
        Person person = personService.add(parsePerson(request));
        log.debug("{} added in bd", person);
        return "redirect:/markWithFreemarker";
    }

    private Person parsePerson(HttpServletRequest request) {
        Integer id = null;
        if (Objects.nonNull(request.getParameter("id"))) {
            id = Integer.valueOf(request.getParameter("id").replaceAll("\\D", ""));
        }
        String login = request.getParameter("login");
        String password = request.getParameter("password");
        String birthdate = request.getParameter("birthdate");
        LocalDate date = LocalDate.parse(birthdate, DateTimeFormatter.ofPattern("yyyy-MM-dd"));
        return new Person(id, login, password, date);
    }

    @PostMapping("/delete")
    public String delete(Model model, HttpServletRequest request) {
        Integer id = Integer.valueOf(request.getParameter("id").replaceAll("\\D", ""));
        log.debug("delete person with id = {}", id);
        personService.delete(id);
        return "redirect:/markWithFreemarker";
    }

    @PostMapping("/update")
    public String update(Model model, HttpServletRequest request) {
        log.debug("update person");
        Person person = personService.update(parsePerson(request));
        log.debug("update {}", person);
        return "redirect:/markWithFreemarker";
    }


}
