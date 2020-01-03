package com.steve.service;

import com.steve.mapper.BookMapper;
import com.steve.pojo.Book;

import java.util.List;

public class BookServiceImpl implements BookService {
    //调用dao层的操作，设置一个set接口，方便Spring管理
    private BookMapper bookMapper;

    public void setBookMapper(BookMapper bookMapper) {
        this.bookMapper = bookMapper;
    }

    public void addBook(Book book) {
        bookMapper.addBook(book);
    }

    public void deleteBookById(int id) {
        bookMapper.deleteBookById(id);
    }

    public void updateBook(Book book) {
        bookMapper.updateBook(book);
    }

    public List<Book> selectBooks() {
        return bookMapper.selectBooks();
    }

    public Book selectBookById(int id) {
        return bookMapper.selectBookById(id);
    }
}
