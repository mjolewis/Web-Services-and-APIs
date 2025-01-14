package com.udacity.vehicles.config;

import io.swagger.annotations.ApiResponse;
import io.swagger.annotations.ApiResponses;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.service.Contact;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

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
@EnableSwagger2
public class SwaggerConfig {

    @Bean
    public Docket api() {
        return new Docket(DocumentationType.SWAGGER_2)
                .select()
                .apis(RequestHandlerSelectors.any())
                .paths(PathSelectors.any())
                .build()
                .useDefaultResponseMessages(false)  // Custom messages included in the controller classes
                .apiInfo(apiInfo());
    }

    private ApiInfo apiInfo() {
        return new ApiInfo(
                "Vehicle API",
                "Returns a list of vehicles",
                "1.0",
                "http://www.udacity.com",
                new Contact("Michael Lewis", "www.udacity.com", "test@gmail.com"),
                "License of API",
                "http://www.udacity.com/license",
                Collections.emptyList()
        );
    }
}
