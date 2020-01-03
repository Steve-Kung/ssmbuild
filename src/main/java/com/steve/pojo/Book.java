package com.steve.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Book {
    private int bookId;
    private String bookName;
    private int bookCounts;
    private String bookDetails;

//    public Book() {
//    }
//
//    public Book(int bookId, String bookName, int bookCounts, String bookDetails) {
//        this.bookId = bookId;
//        this.bookName = bookName;
//        this.bookCounts = bookCounts;
//        this.bookDetails = bookDetails;
//    }
//
//    public int getBookId() {
//        return bookId;
//    }
//
//    public void setBookId(int bookId) {
//        this.bookId = bookId;
//    }
//
//    public String getBookName() {
//        return bookName;
//    }
//
//    public void setBookName(String bookName) {
//        this.bookName = bookName;
//    }
//
//    public int getBookCounts() {
//        return bookCounts;
//    }
//
//    public void setBookCounts(int bookCounts) {
//        this.bookCounts = bookCounts;
//    }
//
//    public String getBookDetails() {
//        return bookDetails;
//    }
//
//    public void setBookDetails(String bookDetails) {
//        this.bookDetails = bookDetails;
//    }
//
//    @Override
//    public String toString() {
//        return "Book{" +
//                "bookId=" + bookId +
//                ", bookName='" + bookName + '\'' +
//                ", bookCounts=" + bookCounts +
//                ", bookDetails='" + bookDetails + '\'' +
//                '}';
//    }
}
