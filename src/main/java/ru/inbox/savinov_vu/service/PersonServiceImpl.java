package ru.inbox.savinov_vu.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.inbox.savinov_vu.model.Person;
import ru.inbox.savinov_vu.repository.PersonRepository;

import java.util.List;

@Service
public class PersonServiceImpl implements PersonService {

    @Autowired
    private PersonRepository repository;


    @Override
    public List<Person> getAll() {
        return repository.findAll();
    }

    @Override
    public void delete(Integer id) {
         repository.delete(id);
    }

    @Override
    public Person add(Person person) {
        return repository.saveAndFlush(person);
    }

    @Override
    public Person update(Person person) {
        return repository.saveAndFlush(person);
    }
}
