package lebvy;

import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class Runner1 {

	@Test
	public Karate run() {
		//return Karate.run("Api_Get").relativeTo(getClass()) ;
		return Karate.run("classpath:lebvy/Api_Get.feature");
	}
}
