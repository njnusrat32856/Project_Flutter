package com.nusrat.BmsBank.repository;

import com.nusrat.BmsBank.entity.Transaction;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TransactionRepository extends JpaRepository<Transaction, Long> {

    @Override
    <S extends Transaction> Page<S> findAll(Example<S> example, Pageable pageable);

    List<Transaction> findByUserId(Long userId);


}
