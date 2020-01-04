package com.steve.controller;

import com.steve.pojo.Book;
import com.steve.service.BookService;
import com.steve.service.BookServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.jws.WebParam;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/book")
public class BookController {
    // controller层调用service层

    // 展示所有书籍页面
    @Autowired
    @Qualifier("bookServiceImpl")
    private BookService bookService;

    @RequestMapping("/allBooks")
    public String list(Model model){
        List<Book> books = bookService.selectBooks();
        model.addAttribute("msg",books);
        return "allBook";
    }

    // 跳转到添加书籍页面
    @RequestMapping("/toAddBookPage")
    public String toAddBookPage(){
        return "addBookPage";
    }
    // 添加书籍操作
    @RequestMapping("/addBook")
    public String addBook(Book book){
//        System.out.println(book);
        bookService.addBook(book);
        return "redirect:/book/allBooks";
    }

    // 跳转到修改书籍页面
    @RequestMapping("/toUpdateBookPage")
    public String toUpdateBookPage(int bookId, Model model){
        Book updateBook = bookService.selectBookById(bookId);
        model.addAttribute("updateBook", updateBook);
        return "updateBookPage";
    }
    // 修改书籍操作
    @RequestMapping("/updateBook")
    public String updateBook(Book book){
        bookService.updateBook(book);
//        System.out.println(book);
        return "redirect:/book/allBooks";
    }

    // 删除书籍操作
    @RequestMapping("/deleteBook/{bookId}")
    public String deleteBook(@PathVariable("bookId") int bookId){
        bookService.deleteBookById(bookId);
        return "redirect:/book/allBooks";
    }

    // 查询书籍
    @RequestMapping("/selectBookByName")
    public String selectBookByName(Model model, String bookName){
        Book book = bookService.selectBookByName(bookName);
        String message = null;
        if (book == null){
            message = "查询结果为空，请重新搜索";
        }
        List<Book> bookList = new ArrayList<Book>();
        bookList.add(book);
        model.addAttribute("msg", bookList);
        model.addAttribute("message", message);
        return "allBook";
    }


}