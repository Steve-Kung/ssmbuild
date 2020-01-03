package com.steve.service;

import com.steve.pojo.Book;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BookService {
    // 增
    public void addBook(Book book);

    // 删
    public void deleteBookById(int id);

    // 改
    public void updateBook(Book book);

    // 查
    public List<Book> selectBooks();

    public Book selectBookById(int id);
}
