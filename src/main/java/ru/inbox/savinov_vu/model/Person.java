package ru.inbox.savinov_vu.model;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import lombok.*;
import org.springframework.data.domain.Persistable;
import ru.inbox.savinov_vu.util.json.JsonDateDeserializer;
import ru.inbox.savinov_vu.util.json.JsonDateSerializer;

import javax.persistence.*;
import java.time.LocalDate;


@Entity
@Table(name = "person")
@Access(value = AccessType.FIELD)
@Data
@NoArgsConstructor
@ToString
@EqualsAndHashCode
@AllArgsConstructor
public class Person implements Persistable<Integer> {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    Integer id;

    private @NonNull String login;

    private @NonNull String password;

    @Column(name = "birthdate")
    @JsonSerialize(using = JsonDateSerializer.class)
    @JsonDeserialize(using = JsonDateDeserializer.class)
    private @NonNull LocalDate birthDate;

    public Person(String login, String password, LocalDate birthDate) {
        this.login = login;
        this.password = password;
        this.birthDate = birthDate;
    }


    @Override
    public boolean isNew() {
        return getId() == null;
    }
}
