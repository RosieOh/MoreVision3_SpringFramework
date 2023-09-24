package kr.co.teaspoon.dto;

import lombok.Data;

@Data
public class CommunityVO {

    private int cno;
    private String cname;
    private String title;
    private String author;
    private String resdate;
    private int cnt;
}
