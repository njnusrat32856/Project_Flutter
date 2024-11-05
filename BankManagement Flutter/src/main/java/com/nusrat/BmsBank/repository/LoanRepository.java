package com.nusrat.BmsBank.repository;

import com.nusrat.BmsBank.entity.Loan;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface LoanRepository extends JpaRepository<Loan, Long> {


    List<Loan> findByUserId(Long userId);
}