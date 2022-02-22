package com.mercury.dao;

import org.apache.ibatis.annotations.Param;
import com.mercury.pojo.Books;

import java.util.List;

public interface BooksMapper {
    //1.增  增加一条数据信息
    int addBooks(Books books);

    //2.删  根据id删除一条数据信息
    int deleteBooksById(@Param("bookID") int id);

    //3.改  修改数据信息
    int updateBooks(Books books);

    //4.查  根据id查询对应的数据
    Books queryBooksById(@Param("bookID") int id);

    //4.查  查询全部数据
    List<Books> queryAllBooks();

}
