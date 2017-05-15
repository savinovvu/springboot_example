package ru.inbox.savinov_vu.service;

import ru.inbox.savinov_vu.model.Person;

import java.util.List;

public interface PersonService {

    List<Person> getAll();

    void delete(Integer id);

    Person add(Person person);

    Person update(Person person);
}
