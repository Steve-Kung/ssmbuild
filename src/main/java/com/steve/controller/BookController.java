package com.steve.controller;

import com.steve.pojo.Book;
import com.steve.service.BookService;
import com.steve.service.BookServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/book")
public class BookController {
    // controller层调用service层
    @Autowired
    @Qualifier("bookServiceImpl")
    private BookService bookService;
    @RequestMapping("/allBooks")
    public String list(Model model){
        List<Book> books = bookService.selectBooks();
        model.addAttribute("msg",books);
        return "allBook";
    }



}