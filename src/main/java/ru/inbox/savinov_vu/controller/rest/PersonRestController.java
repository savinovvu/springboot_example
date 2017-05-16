package ru.inbox.savinov_vu.controller.rest;


import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;
import ru.inbox.savinov_vu.model.Person;
import ru.inbox.savinov_vu.service.PersonService;

import java.util.List;

@RestController
@RequestMapping(value = "/person", produces = MediaType.APPLICATION_JSON_VALUE)
@Slf4j
public class PersonRestController {

    @Autowired
    PersonService personService;

    @GetMapping(value = "/all")
    public List<Person> getAll() {
        log.debug("\nget all persons");
        return personService.getAll();

    }

    @PutMapping
    public List<Person> add(@RequestBody Person person) {
        log.debug("\nput person {}", person);
        personService.add(person);
        return personService.getAll();

    }

    @PostMapping
    public List<Person> update(@RequestBody Person person) {
        log.debug("\nput person {}", person);
        personService.update(person);
        return personService.getAll();

    }

    @DeleteMapping
    public List<Person> delete(@RequestBody Integer id) {
        log.debug("\ndelete person with id={}", id);
        personService.delete(id);
        return personService.getAll();

    }


}
