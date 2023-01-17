package com.joao.springmvcwithsecurity.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configurers.LogoutConfigurer;
import org.springframework.security.provisioning.JdbcUserDetailsManager;
import org.springframework.security.provisioning.UserDetailsManager;
import org.springframework.security.web.SecurityFilterChain;

import javax.sql.DataSource;


@Configuration
@EnableWebSecurity
public class SecurityConfig {

    @Autowired
    private DataSource securityDataSource;

    @Bean
    public UserDetailsManager userDetailsManager() {
        return new JdbcUserDetailsManager(securityDataSource);
    }

    @Bean
    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
        return http
                .authorizeRequests(configure ->
                        configure.antMatchers("/css/**").permitAll()
                                .antMatchers("/console/**").permitAll()
                                .antMatchers("/").hasRole("EMPLOYEE")
                                .antMatchers("/leaders/**").hasRole("MANAGER")
                                .antMatchers("/systems/**").hasRole("ADMIN"))
                .formLogin(configure ->
                        configure.loginPage("/showMyLoginPage")
                                .loginProcessingUrl("/authenticateTheUser")
                                .permitAll())
                .logout(LogoutConfigurer::permitAll)
                .exceptionHandling(configure -> configure.accessDeniedPage("/access-denied"))
                .build();
    }

    /*
    @Bean
    public InMemoryUserDetailsManager userDetailsManager() {

        UserDetails john = User.builder()
                .username("john")
                .password("{noop}test123")
                .roles("EMPLOYEE")
                .build();

        UserDetails mary = User.builder()
                .username("mary")
                .password("{noop}test123")
                .roles("MANAGER", "EMPLOYEE")
                .build();

        UserDetails susan = User.builder()
                .username("susan")
                .password("{noop}test123")
                .roles("ADMIN", "EMPLOYEE")
                .build();

        return new InMemoryUserDetailsManager(john, mary, susan);
    }*/

}
