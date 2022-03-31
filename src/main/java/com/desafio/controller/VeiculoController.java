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
import springfox.documentation.annotations.ApiIgnore;
import java.time.LocalDateTime;
import java.util.List;
import java.util.stream.Collectors;

@Controller
@Api(value = "API REST Veiculos")
@RequestMapping(value="/")
@CrossOrigin(origins = "*")

public class VeiculoController {
    JSONObject obj;
    List<JSONObject> objList;
    VeiculoController(){
        obj = new JSONObject();
    }

    @Autowired
    VeiculoService veiculoService;

    @GetMapping(value = "/")
    @ApiIgnore
    public String paginaInicial(Model memoria){

        memoria.addAttribute("listaVeiculos", veiculoService.buscarVeiculos()
                .stream()
                .map(veiculo -> new Veiculo(veiculo.getId(),veiculo.getNome(),veiculo.getMarca(),veiculo.getAno(),veiculo.getDescricao(),veiculo.getCor(),veiculo.isVendido(),veiculo.getCreated(), veiculo.getUpdated()))
                .collect(Collectors.toList()));

        listarVeiculosNaoVendidos(memoria);
        listarVeiculosCriadosSemanaPassada(memoria);

        return "/crud";
    }

    @GetMapping(value = "/veiculos", produces = MediaType.APPLICATION_JSON_VALUE)
    @ResponseBody
    @ApiOperation(value="Retorna uma lista de veículos")
    public JSONObject listarVeiculos(){

        var lista = veiculoService.buscarVeiculos();

            obj.put("veiculos", lista);

        return obj;
    }

    @RequestMapping(value = "/veiculos/especificos", produces = MediaType.APPLICATION_JSON_VALUE,method=RequestMethod.GET)
    @ResponseBody
    @ApiOperation(value="Retorna uma lista de veiculos específicos")
    public JSONObject listarVeiculosEspecificos(@RequestParam("marca") String marca, @RequestParam("ano") int ano, @RequestParam("cor") String cor){

        var lista = veiculoService.buscarVeiculosPorMarcaAnoCor(marca,ano,cor);

        if(lista!=null){
            lista.stream()
                    .forEach(veiculo -> {
                        obj.put("veiculos", lista);
                    });
        }

        return obj;
    }

    @GetMapping(value = "/veiculos/{id}", produces = MediaType.APPLICATION_JSON_VALUE)
    @ResponseBody
    @ApiOperation(value="Retorna um veículo único")
    public JSONObject listarVeiculoPorId(@PathVariable Long id){

        var veiculoEncontrado = veiculoService.buscarVeiculoPorId(id);

        obj.put("veiculos", veiculoEncontrado);

        return obj;
    }

    @PostMapping("/veiculos")
    @ApiOperation(value="Salva um veículo")
    public String salvarVeiculo(Veiculo veiculo) {

        veiculo.setCreated(LocalDateTime.now());
        veiculo.setUpdated(LocalDateTime.now());

        veiculoService.salvarVeiculo(veiculo);
        return "redirect:/";
    }

    @RequestMapping(value = "veiculos/{id}", method={RequestMethod.DELETE})
    @ApiOperation(value="Exclui um veículo")
    public String excluirVeiculo(@PathVariable Long id) {

        veiculoService.excluirVeiculo(id);

        return "redirect:/";
    }

    @RequestMapping(value = "veiculos/{id}", method={RequestMethod.PUT})
    @ApiOperation(value="Altera um veículo")
    public String alterarVeiculo(@RequestBody Veiculo veiculo, @PathVariable Long id){
        var veiculoEncontrado = veiculoService.buscarVeiculoPorId(id);

        if(veiculoEncontrado.isPresent()){
            veiculoService.atualizarVeiculo(veiculo);
        }

        return "redirect:/";
    }

    @RequestMapping(value = "veiculos/{id}", method={RequestMethod.PATCH})
    @ApiOperation(value="Altera apenas alguns dados do veículo")
    public String alterarApenasAlgunsDadosDoVeiculo(@PathVariable Long id, @RequestBody Integer ano){

        var veiculoEncontrado = veiculoService.buscarVeiculoPorId(id);

        if(veiculoEncontrado.isPresent()){
            var veiculo = veiculoEncontrado.get();

            veiculo.setAno(ano);
            veiculoService.atualizarVeiculo(veiculo);
        }
        return "redirect:/";
    }

    @GetMapping(value = "/vendidos")
    @ApiIgnore
    public String listarVeiculosNaoVendidos(Model memory){

        memory.addAttribute("listaVeiculosNaoVendidos", veiculoService.buscarVeiculosNaoVendidos(false)
                .stream()
                .map(veiculo -> new Veiculo(veiculo.getId(),veiculo.getNome(),veiculo.getMarca(),veiculo.getAno(),veiculo.getDescricao(),veiculo.getCor(),veiculo.isVendido(),veiculo.getCreated(), veiculo.getUpdated()))
                .collect(Collectors.toList()));

        memory.addAttribute("contagemVeiculosNaoVendidos", veiculoService.buscarVeiculosNaoVendidos(false)
                .stream()
                .count());

        return "redirect:/";
    }


    @GetMapping(value = "/veiculosCriadosSemanaPassada")
    @ApiIgnore
    public String listarVeiculosCriadosSemanaPassada(Model memory){

        memory.addAttribute("listaVeiculosCriadosSemanaPassada", veiculoService.buscarVeiculos()
                .stream()
                .map(veiculo -> new Veiculo(veiculo.getId(),veiculo.getNome(),veiculo.getMarca(),veiculo.getAno(),veiculo.getDescricao(),veiculo.getCor(),veiculo.isVendido(),veiculo.getCreated(), veiculo.getUpdated()))
                        .filter(p -> p.getCreated().isAfter(LocalDateTime.now().minusDays(7)))
                .collect(Collectors.toList()));

        return "redirect:/";
    }
}
