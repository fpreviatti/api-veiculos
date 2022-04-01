<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gestão de veículos</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>

<body>

    <div class="container-fluid">
        <div class="jumbotron mt-5">
            <h1>API DE VEÍCULOS</h1>
        </div>
                <form action="/veiculos" method="POST">

                    <div class="form-group">
                        <label for="nome">Veiculo:</label>
                        <input
                                name="nome"
                                type="text"
                                placeholder="Informe o veículo"
                                id="nome">
                    </div>

                    <div class="form-group">
                        <label for="descricao">Descrição:</label>
                        <input

                                name="descricao"
                                type="text"
                                placeholder="Informe a descrição do veículo"
                                id="descricao">
                    </div>

                    <div class="form-group">
                        <label for="cor">Cor:</label>

                        <select class="custom-select col-md-2" name="cor" id="cor"id="inputGroupSelect05">
                            <#list listaCores as cor>
                            <option value="${cor}">${cor}</option>
                        </#list>
                        </select>
                    </div>

                    <div class="form-group">
                        <label for="marca">Marca:</label>

                        <select class="custom-select col-md-2" name="marca" id="marca"id="inputGroupSelect06">
                            <#list listaMarcas as marca>
                            <option value="${marca}">${marca}</option>
                        </#list>
                        </select>
                    </div>

                    <div class="form-group">
                        <label for="Status">Status:</label>

                        <select id="Status" name="vendido" class="custom-select col-md-2">

                            <option value="true">Vendido</option>

                            <option value="false">À Venda</option>

                        </select>

                    </div>

                    <div class="form-group">
                        <label for="ano">Ano:</label>

                        <select id="ano" name="ano" class="custom-select col-md-2">

                            <option value="2022">2022</option>
                            <option value="2021">2021</option>
                            <option value="2020">2020</option>
                            <option value="2019">2019</option>
                            <option value="2018">2018</option>
                            <option value="2017">2017</option>
                            <option value="2016">2016</option>
                            <option value="2015">2015</option>
                            <option value="2014">2014</option>
                            <option value="2013">2013</option>
                            <option value="2012">2012</option>
                            <option value="2011">2011</option>
                            <option value="2010">2010</option>
                            <option value="2009">2009</option>
                            <option value="2008">2008</option>
                            <option value="2007">2007</option>
                            <option value="2006">2006</option>
                            <option value="2005">2005</option>
                            <option value="2004">2004</option>
                            <option value="2003">2003</option>
                            <option value="2002">2002</option>
                            <option value="2001">2001</option>
                            <option value="2000">2000</option>
                            <option value="1999">1999</option>
                            <option value="1998">1998</option>
                            <option value="1997">1997</option>
                            <option value="1996">1996</option>
                            <option value="1995">1995</option>
                            <option value="1994">1994</option>
                            <option value="1993">1993</option>
                            <option value="1992">1992</option>
                            <option value="1991">1991</option>
                            <option value="1990">1990</option>
                            <option value="1989">1989</option>
                            <option value="1988">1988</option>
                            <option value="1987">1987</option>
                            <option value="1986">1986</option>
                            <option value="1985">1985</option>
                            <option value="1984">1984</option>
                            <option value="1983">1983</option>
                            <option value="1982">1982</option>
                            <option value="1981">1981</option>
                            <option value="1980">1980</option>

                        </select>

                    </div>


                <button type="submit" class="btn btn-primary">Criar</button>

        </form>

        <h2 align="center">Veículos cadastrados</h2>

        <table class="table table-striped table-hover mt-5">
            <thead class="thead-dark">
                <tr>
                    <th>ID</th>
                    <th>Veiculo</th>
                    <th>Marca</th>
                    <th>Ano</th>
                    <th>Descrição</th>
                    <th>Cor</th>
                    <th>Vendido</th>
                    <th>Data do cadastro</th>
                    <th>Data da última atualização</th>
                    <th>Ações</th>
                </tr>
            </thead>
            <tbody>
                <#list listaVeiculos as veiculo >
                    <tr>
                        <td>${veiculo.id}</td>
                        <td>${veiculo.nome}</td>
                        <td>${veiculo.marca}</td>
                        <td>${veiculo.ano}</td>
                        <td>${veiculo.descricao}</td>
                        <td>${veiculo.cor}</td>
                        <td>${veiculo.vendido?then('Vendido', 'À venda')}</td>
                        <td>${veiculo.created.format('dd-MM-yyyy HH:mm:ss')}</td>
                        <td>${veiculo.updated.format('dd-MM-yyyy HH:mm:ss')}</td>

                        <td>
                            <div class="d-flex d-justify-content-center">

                            <form method="post" action="/excluir/${veiculo.id}">

                                <button type="submit" class="btn btn-danger mr-3" >Excluir</button>

                            </form>

                            </div>
                        </td>
                    </tr>
                </#list>
            </tbody>
        </table>

        <h2 align="center">Total de veículos à venda: ${contagemVeiculosNaoVendidos}</h2>

        <table class="table table-striped table-hover mt-5">
            <thead class="thead-dark">
            <tr>
                <th>ID</th>
                <th>Veiculo</th>
                <th>Marca</th>
                <th>Ano</th>
                <th>Descrição</th>
                <th>Cor</th>
                <th>Vendido</th>
                <th>Data do cadastro</th>
                <th>Data da última atualização</th>

            </tr>
            </thead>
            <tbody>
            <#list listaVeiculosNaoVendidos as veiculo >
            <tr>
                <td>${veiculo.id}</td>
                <td>${veiculo.nome}</td>
                <td>${veiculo.marca}</td>
                <td>${veiculo.ano}</td>
                <td>${veiculo.descricao}</td>
                <td>${veiculo.cor}</td>
                <td>${veiculo.vendido?then('Vendido', 'À venda')}</td>
                <td>${veiculo.created.format('dd-MM-yyyy HH:mm:ss')}</td>
                <td>${veiculo.updated.format('dd-MM-yyyy HH:mm:ss')}</td>

            </tr>
            </#list>
            </tbody>
        </table>

        <h2 align="center">Veículos cadastrados na última semana</h2>

        <table class="table table-striped table-hover mt-5">
            <thead class="thead-dark">
            <tr>
                <th>ID</th>
                <th>Veiculo</th>
                <th>Marca</th>
                <th>Ano</th>
                <th>Descrição</th>
                <th>Cor</th>
                <th>Vendido</th>
                <th>Data do cadastro</th>
                <th>Data da última atualização</th>

            </tr>
            </thead>
            <tbody>
            <#list listaVeiculosCriadosSemanaPassada as veiculo >
            <tr>
                <td>${veiculo.id}</td>
                <td>${veiculo.nome}</td>
                <td>${veiculo.marca}</td>
                <td>${veiculo.ano}</td>
                <td>${veiculo.descricao}</td>
                <td>${veiculo.cor}</td>
                <td>${veiculo.vendido?then('Vendido', 'À venda')}</td>
                <td>${veiculo.created.format('dd-MM-yyyy HH:mm:ss')}</td>
                <td>${veiculo.updated.format('dd-MM-yyyy HH:mm:ss')}</td>

            </tr>
            </#list>
            </tbody>
        </table>

    </div>

</body>

</html>