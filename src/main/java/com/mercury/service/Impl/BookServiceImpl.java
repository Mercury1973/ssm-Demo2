package com.mercury.service.Impl;

import com.mercury.dao.BooksMapper;
import com.mercury.pojo.Books;
import com.mercury.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * PackageName:com.mercury.service.Impl
 * ClassName:BookServiceImpl
 * Description:
 *
 * @author Mercury
 * @Date 2022/2/18 21:32
 */
@Service
public class BookServiceImpl implements BookService {
    @Autowired
    private BooksMapper booksMapper;

    public void setBooksMapper(BooksMapper booksMapper) {
        this.booksMapper = booksMapper;
    }

    @Override
    public int addBooks(Books books) {
        return booksMapper.addBooks(books);
    }

    @Override
    public int deleteBooksById(int id) {
        return booksMapper.deleteBooksById(id);
    }

    @Override
    public int updateBooks(Books books) {
        return booksMapper.updateBooks(books);
    }

    @Override
    public Books queryBooksById(int id) {
        return booksMapper.queryBooksById(id);
    }

    @Override
    public List<Books> queryAllBooks() {
        return booksMapper.queryAllBooks();
    }


}
