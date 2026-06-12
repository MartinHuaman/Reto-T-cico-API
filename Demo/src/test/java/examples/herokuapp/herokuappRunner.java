package examples.herokuapp;

import com.intuit.karate.junit5.Karate;

class herokuappRunner {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("UpdateBooking").relativeTo(getClass()).karateEnv("dev").tags("UpdateBooking");
    }    

}
