package com.mercury.controller;

import com.mercury.pojo.Books;
import com.mercury.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

/**
 * PackageName:com.mercury.controller
 * ClassName:BooksController
 * Description:
 *
 * @author Mercury
 * @Date 2022/2/18 21:38
 */
@Controller
@RequestMapping("/books")
public class BooksController {
    @Autowired
    @Qualifier("bookServiceImpl")
    private BookService bookService;

    // 获取全部数据信息
    @RequestMapping("/allBook")
    public String getAllBooks(Model model){
        List<Books> booksList = bookService.queryAllBooks();
        model.addAttribute("queryResult", booksList);
        return "allBooks";
    }

    /**
     * 跳转到增加书籍页面：addBooks页面
     * @return
     */
    @RequestMapping("/toAddBooksPages")
    public String toAddBooksPages(){
        return "addBooks";
    }

    /**
     * 添加书籍信息的请求
     * @param books
     * @return 添加完毕之后，重定向回到首页的请求中 @RequestMapping("/getAllBooks")
     */
    @RequestMapping("/addBooks")
    public String addBooks(Books books){
        System.out.println("新添加的书籍：" + books);
        bookService.addBooks(books);
        // 新增书籍之后，重定向到书籍列表显示页面
        return "redirect:/books/allBook";
    }

    /**
     * 跳转到修改书籍页面：updateBooks页面
     * 跳转页面之后，先显示原有的书籍信息（查询）
     * @return
     */
    @RequestMapping("/toUpdateBooksPages")
    public String toUpdateBooksPages(int id, Model model){
        Books books = bookService.queryBooksById(id);
        System.out.println("根据id查询到的数据为：" + books);
        // 通过model将获取到的数据传回给前端
        model.addAttribute("queryResult",books);
        return "updateBooks";
    }


    /**
     * 修改书籍信息的请求
     * @param books
     * @return 添加完毕之后，重定向回到首页的请求中 @RequestMapping("/getAllBooks")
     */
    @RequestMapping("/updateBooks")
    public String updateBooks(Books books){
        System.out.println("修改的书籍：" + books);
        // service层调用方法更新
        bookService.updateBooks(books);
        // 修改后，重定向到书籍列表显示页面
        return "redirect:/books/allBook";
    }

    //通过restFul风格
    @RequestMapping("/deleteBooks/{bookID}")
    public String deleteBooks(@PathVariable("bookID") int id){
        // service 层调用删除方法
        bookService.deleteBooksById(id);
        // 删除之后，重定向到书籍列表显示页面
        return "redirect:/books/allBook";
    }


}
