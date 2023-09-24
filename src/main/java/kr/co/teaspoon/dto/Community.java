package kr.co.teaspoon.dto;

import lombok.Data;

@Data
public class Community {

    private int cno;
    private String cate;
    private String title;
    private String author;
    private String resdate;
    private int cnt;
}
