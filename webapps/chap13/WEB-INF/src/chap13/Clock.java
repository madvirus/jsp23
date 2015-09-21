package chap13;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Clock {

	public String now() {
		SimpleDateFormat format = new SimpleDateFormat("HH시 mm분 ss초");
		return format.format(new Date());
	}
}
