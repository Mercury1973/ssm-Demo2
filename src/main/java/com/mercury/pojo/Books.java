package com.mercury.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * PackageName:com.mercury.pojo
 * ClassName:Books
 * Description:
 *
 * @author Mercury
 * @Date 2022/2/18 21:28
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Books {
    private int bookID;
    private String bookName;
    private int bookCounts;
    private double bookPrice;
    private String detail;
}
