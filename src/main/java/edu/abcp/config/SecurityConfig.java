package edu.abcp.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.password.PasswordEncoder;

import edu.abcp.repository.UsersRepository;
import edu.abcp.service.CustomUserDetailsService;

@EnableWebSecurity
@EnableJpaRepositories(basePackageClasses = UsersRepository.class)
@Configuration
public class SecurityConfig extends WebSecurityConfigurerAdapter {
	
	
	@Autowired
	 private CustomUserDetailsService userDetailsService;
    
   
	public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception{
		
		
		
		
		auth.inMemoryAuthentication()
		  .withUser("admin")
		     .password("123456")
		        .roles("ADMIN");
		
		
		
		auth.inMemoryAuthentication()
		  .withUser("jj")
		     .password("123456")
		     .roles("Test");
		
	}
	
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		
	
		    http.authorizeRequests()
		   
	     .antMatchers("/").access("hasRole('ADMIN')")
	     .antMatchers("/bis").access("hasRole('ADMIN')")
		        .and().formLogin();
		     
		
		
		      
		
		    
	}
	
	
	
/*
    @Autowired
    private CustomUserDetailsService userDetailsService;*/

/*    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {

        auth.userDetailsService(userDetailsService);
       
    }*/

    
  //  @Override
   // protected void configure(HttpSecurity http) throws Exception {

      //  http.csrf().disable();
     //   http.authorizeRequests()
              //  .antMatchers("**/templates/**").authenticated()
              //  .anyRequest().permitAll()
          //      .and()
         //       .formLogin().permitAll();
  //  }

   /* private PasswordEncoder getPasswordEncoder() {
        return new PasswordEncoder() {
            @Override
            public String encode(CharSequence charSequence) {
                return charSequence.toString();
            }

            @Override
            public boolean matches(CharSequence charSequence, String s) {
                return true;
            }
        };
    }*/
}
