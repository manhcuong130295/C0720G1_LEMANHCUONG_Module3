package com.demo_mvc.service;

import com.demo_mvc.models.Customers;

import java.util.List;

public interface CustomerService {
    List<Customers> findAll();

    void save(Customers customer);

    Customers findById(int id);

    void update(int id, Customers customer);

    void remove(int id);
}
