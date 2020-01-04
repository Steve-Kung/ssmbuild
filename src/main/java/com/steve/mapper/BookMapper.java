package com.steve.mapper;

import com.steve.pojo.Book;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface BookMapper {
    // 增
    public void addBook(Book book);

    // 删
    public void deleteBookById(@Param("bookId") int id);

    // 改
    public void updateBook(Book book);

    // 查
    public List<Book> selectBooks();

    public Book selectBookById(@Param("bookId") int id);
    // 根据名字查询
    public Book selectBookByName(@Param("bookName") String name);
}
