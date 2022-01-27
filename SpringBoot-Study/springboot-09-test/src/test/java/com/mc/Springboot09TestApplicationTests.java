package com.mc;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import java.io.File;

@SpringBootTest
class Springboot09TestApplicationTests {

    @Autowired
    JavaMailSenderImpl mailSender;

    @Test
    void contextLoads() {

        //一个简单的邮件
        SimpleMailMessage mailMessage = new SimpleMailMessage();
        mailMessage.setSubject("小狂神你好呀~");
        mailMessage.setText("谢谢你的狂神说Java系列课程~");

        mailMessage.setTo("3070265813@qq.com");
        mailMessage.setFrom("3070265813@qq.com");

        mailSender.send(mailMessage);
    }

    @Test
    void contextLoads2() throws MessagingException {

        //一个复杂的邮件
        MimeMessage mimeMessage = mailSender.createMimeMessage();
        //组装
        MimeMessageHelper helper = new MimeMessageHelper(mimeMessage,true);

        //正文
        helper.setSubject("小狂神你好呀~");
        helper.setText("<p style='color:red'>谢谢你的狂神说Java系列课程~</p>",true);

        //附件
        helper.addAttachment("1.jpg",new File("C:\\Users\\MC234\\Pictures\\Saved Pictures\\1.jpg"));
        helper.addAttachment("2.jpg",new File("C:\\Users\\MC234\\Pictures\\Saved Pictures\\1.jpg"));

        helper.setTo("3070265813@qq.com");
        helper.setFrom("3070265813@qq.com");

        mailSender.send(mimeMessage);
    }

    /**
     * 封装成方法
     * @Author 小马
     * @param html
     * @param subject
     * @param text
     * @throws MessagingException
     */
    public void sendMail(Boolean html,String subject,String text) throws MessagingException {
        //一个复杂的邮件
        MimeMessage mimeMessage = mailSender.createMimeMessage();
        //组装
        MimeMessageHelper helper = new MimeMessageHelper(mimeMessage,html);

        //正文
        helper.setSubject(subject);
        helper.setText(text,true);

        //附件
        helper.addAttachment("1.jpg",new File("C:\\Users\\MC234\\Pictures\\Saved Pictures\\1.jpg"));
        helper.addAttachment("2.jpg",new File("C:\\Users\\MC234\\Pictures\\Saved Pictures\\1.jpg"));

        helper.setTo("3070265813@qq.com");
        helper.setFrom("3070265813@qq.com");

        mailSender.send(mimeMessage);
    }
}
