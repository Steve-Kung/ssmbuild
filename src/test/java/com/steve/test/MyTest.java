package com.steve.test;

import com.steve.mapper.BookMapper;
import com.steve.pojo.Book;
import com.steve.service.BookServiceImpl;
import com.steve.utils.SqlSessionUtil;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;
import java.util.Random;

public class MyTest {
    @Test
    public void mybatisTest(){
        SqlSession sqlSession = SqlSessionUtil.getSqlSession();
        BookMapper mapper = sqlSession.getMapper(BookMapper.class);
        List<Book> books = mapper.selectBooks();
        for (Book book : books) {
            System.out.println(book.toString());
        }
        sqlSession.close();
    }

    @Test
    public void selectBookById(){
        SqlSession sqlSession = SqlSessionUtil.getSqlSession();
        BookMapper mapper = sqlSession.getMapper(BookMapper.class);
        Book book = mapper.selectBookById(1);
        System.out.println(book);
        sqlSession.close();
    }

    @Test
    public void addBook(){
        SqlSession sqlSession = SqlSessionUtil.getSqlSession();
        BookMapper mapper = sqlSession.getMapper(BookMapper.class);
        Book book = new Book(10, "vue", 8, "vue精通");
        mapper.addBook(book);
        sqlSession.close();
    }

    @Test
    public void deleteBookById(){
        SqlSession sqlSession = SqlSessionUtil.getSqlSession();
        BookMapper mapper = sqlSession.getMapper(BookMapper.class);
        mapper.deleteBookById(7);
        List<Book> books = mapper.selectBooks();
        for (Book book : books) {
            System.out.println(book);
        }
        sqlSession.close();
    }

    @Test
    public void updateBook(){
        SqlSession sqlSession = SqlSessionUtil.getSqlSession();
        BookMapper mapper = sqlSession.getMapper(BookMapper.class);
        mapper.updateBook(new Book(1,"java",15,"java30天入门"));
        List<Book> books = mapper.selectBooks();
        for (Book book : books) {
            System.out.println(book);
        }
        sqlSession.close();
    }

    @Test
    public void test1(){
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        BookServiceImpl bookServiceImpl = context.getBean("bookServiceImpl", BookServiceImpl.class);
        List<Book> books = bookServiceImpl.selectBooks();
        for (Book book : books) {
            System.out.println(book);
        }
    }
}
