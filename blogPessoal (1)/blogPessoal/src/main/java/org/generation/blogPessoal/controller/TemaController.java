package org.generation.blogPessoal.controller;

import java.util.List;

import org.generation.blogPessoal.model.Tema;
import org.generation.blogPessoal.repository.TemaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;

@RestController
@CrossOrigin(origins = "*", allowedHeaders = "*")
@RequestMapping("/tema")
@Api(value = "API REST TEMA")
public class TemaController {
	
	@Autowired 
	private TemaRepository repository;
	
	@GetMapping
	@ApiOperation(value = "Retorna uma lista de temas")
	public ResponseEntity<List<Tema>> getAll(){
		return ResponseEntity.ok(repository.findAll());
	}
	
	@GetMapping("/{id}")
	@ApiOperation(value = "Retorna um tema unico")
	public ResponseEntity<Tema> getById(@PathVariable Long id){
		return repository.findById(id).map(resp -> ResponseEntity.ok(resp))
				.orElse(ResponseEntity.notFound().build());
	}
	
	@GetMapping("/nome/{nome}")
	@ApiOperation(value = "Retorna um tema por nome")
	public ResponseEntity<List<Tema>> getByName(@PathVariable String nome){
		return ResponseEntity.ok(repository.findAllByDescricaoContainingIgnoreCase(nome));
	}
	
	@PostMapping
	@ApiOperation(value = "Salva um tema")
	public ResponseEntity<Tema> put (@RequestBody Tema tema){
		return ResponseEntity.status(HttpStatus.CREATED).body(repository.save(tema));
	}
	
	@PutMapping
	@ApiOperation(value = "Atualiza um tema")
	public ResponseEntity<Tema> post (@RequestBody Tema tema){
		return ResponseEntity.ok(repository.save(tema));
	}
	
	@DeleteMapping("/{id}")
	@ApiOperation(value = "Deleta um tema")
	public void delete(@PathVariable Long id) {
		repository.deleteById(id);	
	}
	

}
