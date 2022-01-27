import com.mc.pojo.Student;
import com.mc.pojo.User;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class MyTest {
    public static void main(String[] args) {
        ApplicationContext context = new ClassPathXmlApplicationContext("beans.xml");
        Student student = (Student) context.getBean("student");
        System.out.println(student.toString());

        /*
        * Student{
        *       name='秦疆',
        *       address=Address{
                    address='西安'
                },
                books=[红楼梦, 水浒传, 三国演义, 西游记],
                hobbys=[听歌, 敲代码, 看电影],
                card={
                    身份证=231231231231231,
                    银行卡=156436465231311
                },
                games=[LOL, COC, BOB],
                wife='null',
                info={
                    学号=20210812,
                    性别=男,
                    姓名=小李
                }
            }
        * */
    }

    @Test
    public void test2(){
        ApplicationContext context = new ClassPathXmlApplicationContext("userbeans.xml");
        User user = context.getBean("user2", User.class);
        System.out.println(user);
    }
}
