package com.helloword.hello.contoller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@SuppressWarnings("unused")
@RestController
@RequestMapping ("/hello")
public class HelloController {
	
	@GetMapping
	public String heloo() {
		return "\n Mentalidade e Habilidade utilizada hoje: Persistência e Atenção aos detalhes \n Objetivos de aprendizagem da semana: Aprender Spring Boot e continuar evoluindo no MySql"; 
				
	}
	

}
