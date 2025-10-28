package com.sourJelly.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;
import java.io.UnsupportedEncodingException;


// 해당 필터를 거쳐갈 서블릿에 대한 url 패턴을 지정
// /servlet 으로 시작하는 서블릿에만 적용 - /servlet/**

// 모든 서블릿
@WebFilter("/*")
public class EncodingFilter implements Filter {

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {

        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");

        // 다음 필터로 넘기기위한 꼬리
        chain.doFilter(request, response);

    }
}
