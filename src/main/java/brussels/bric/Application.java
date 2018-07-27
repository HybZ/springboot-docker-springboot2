package brussels.bric;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import brussels.bric.configuration.ApplicationProperties;

/**
 * @author abajramov
 * @since 7/11/18
 */
@SpringBootApplication
@EnableConfigurationProperties(ApplicationProperties.class)
public class Application {
    // -------------------------------------------------------------------------------Constant(s)---

    // -----------------------------------------------------------------------------Property(ies)---

    // ----------------------------------------------------------------------------Constructor(s)---

    // -------------------------------------------------------------------------------Override(s)---

    // ---------------------------------------------------------------------------------Method(s)---
    /**
     * Launches the application.
     *
     * @param args
     *            the arguments to run the application.
     *
     * @throws Exception
     *             if an exception occurred while running the application.
     */
    public static void main(String[] args) throws Exception {
        SpringApplication.run(Application.class, args);
    }

    // -----------------------------------------------------------------------Getter(s)/Setter(s)---
}