package com.udacity.vehicles.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.service.Contact;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;

import java.util.Collections;

/**********************************************************************************************************************
 * The SwaggerConfig class uses Swagger to automate the generation of machine and human readable specification for JSON
 * APIs within the Spring family of projects.
 *
 * @note  https://springfox.github.io/springfox/docs/current/#introduction
 * @note  http://localhost:8080/swagger-ui/
 *
 * @author Michael Lewis
 *********************************************************************************************************************/
@Configuration
public class SwaggerConfig {

    @Bean
    public Docket api() {
        return new Docket(DocumentationType.SWAGGER_2)
                .select()
                .apis(RequestHandlerSelectors.any())
                .paths(PathSelectors.any())
                .build()
                .useDefaultResponseMessages(false)  // Custom messages included in controllers
                .apiInfo(apiInfo());
    }

    private ApiInfo apiInfo() {
        return new ApiInfo(
                "Vehicle API",
                "Return a list of vehicles and its attributes",
                "1.0",
                "http://www.udacity.com",
                new Contact("Michael Lewis", "www.udacity.com", "test@gmail.com"),
                "License of API",
                "http://www.udacity.com/license",
                Collections.emptyList()
        );
    }
}
