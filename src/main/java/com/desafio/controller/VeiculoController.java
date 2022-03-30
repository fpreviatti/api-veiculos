package com.desafio.controller;

import com.desafio.entidade.Veiculo;
import com.desafio.service.VeiculoService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDateTime;
import java.util.stream.Collectors;

@Controller
@Api(value = "API REST Veiculos")
@RequestMapping(value="/api")
@CrossOrigin(origins = "*")

public class VeiculoController {
    JSONObject obj;
    VeiculoController(){
        obj = new JSONObject();
    }

    @Autowired
    VeiculoService veiculoService;

    @GetMapping(value = "/")
    public String paginaInicial(Model memoria){

        memoria.addAttribute("listaVeiculos", veiculoService.listarVeiculos()
                .stream()
                .map(veiculo -> new Veiculo(veiculo.getId(),veiculo.getNome(),veiculo.getMarca(),veiculo.getAno(),veiculo.getDescricao(),veiculo.getCor(),veiculo.isVendido(),veiculo.getCreated(), veiculo.getUpdated()))
                .collect(Collectors.toList()));

        return "/crud";
    }

    @GetMapping(value = "/veiculos", produces = MediaType.APPLICATION_JSON_VALUE)
    @ResponseBody
    @ApiOperation(value="Retorna uma lista de veículos")
    public JSONObject listarVeiculos(){

        var lista = veiculoService.listarVeiculos();

            obj.put("veiculos", lista);

        return obj;
    }

    @RequestMapping(value = "/veiculos/especificos", produces = MediaType.APPLICATION_JSON_VALUE,method=RequestMethod.GET)
    @ResponseBody
    @ApiOperation(value="Retorna uma lista de veiculos específicos")
    public JSONObject listarVeiculosEspecificos(@RequestParam("marca") String marca, @RequestParam("ano") int ano, @RequestParam("cor") String cor){

        var lista = veiculoService.buscarVeiculosPorMarcaAnoCor(marca,ano,cor);

        System.out.println("chamou método listarVeiculosEspecificos");

        obj.put("veiculos", lista);

        return obj;
    }

    @GetMapping(value = "/veiculos/{id}", produces = MediaType.APPLICATION_JSON_VALUE)
    @ResponseBody
    @ApiOperation(value="Retorna um veículo único")
    public JSONObject listarVeiculoPorId(@PathVariable Long id){

        var veiculoEncontrado = veiculoService.listarVeiculoPorId(id);

        obj.put("veiculos", veiculoEncontrado);

        return obj;
    }

    @PostMapping("/veiculos")
    @ApiOperation(value="Salva um veículo")
    public String salvarVeiculo(Veiculo veiculo) {

        veiculo.setCreated(LocalDateTime.now());
        veiculo.setUpdated(LocalDateTime.now());

        veiculoService.salvarVeiculo(veiculo);
        return "redirect:/api/";
    }

    @DeleteMapping(value = "veiculos/{id}")
    @ApiOperation(value="Exclui um veículo")
    public String excluirVeiculo(@PathVariable Long id) {

        veiculoService.excluirVeiculo(id);

        return "redirect:/api/";
    }

    @PutMapping("veiculos/{id}")
    @ApiOperation(value="Altera um veículo")
    public String alterarVeiculo(Veiculo veiculo, @PathVariable Long id){
        var veiculoEncontrado = veiculoService.listarVeiculoPorId(id);

        veiculo.setUpdated(LocalDateTime.now());

        if(veiculoEncontrado!=null){
            veiculoService.atualizarVeiculo(veiculo);
        }
        return "redirect:/api/";
    }

}
