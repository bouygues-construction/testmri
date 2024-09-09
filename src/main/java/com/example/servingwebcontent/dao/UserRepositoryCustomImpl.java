package com.example.servingwebcontent.dao;

import org.springframework.stereotype.Repository;

import com.example.servingwebcontent.domain.User;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;

@Repository
public class UserRepositoryCustomImpl implements UserRepositoryCustom {

    @PersistenceContext
    private EntityManager entityManager;

    @Override
    @Transactional
    public void updateUser(User user) {
        String sqlUpdateQuery = "UPDATE T_USER SET name = '" + user.getName() + "', email = '" + user.getEmail() + "' WHERE id = " + user.getId();
            entityManager.createNativeQuery(sqlUpdateQuery).executeUpdate();
    }

}
