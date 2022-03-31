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
                                placeholder="Informe o nome do veículo"
                                id="nome">
                    </div>

                    <div class="form-group">
                        <label for="marca">Marca:</label>
                        <input

                                name="marca"
                                type="text"
                                placeholder="Informe a marca do veículo"
                                id="marca">
                    </div>

                    <div class="form-group">
                        <label for="ano">Ano:</label>
                        <input

                                name="ano"
                                type="text"
                                placeholder="Informe o ano do veículo"
                                id="ano">
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
                        <input

                                name="cor"
                                type="text"
                                placeholder="Informe a cor do veículo"
                                id="cor">
                    </div>

                    <div class="form-group">
                        <label for="Status">Status:</label>

                        <select id="Status" name="vendido" class="custom-select col-md-2" id="inputGroupSelect06">

                            <option value="true">Vendido</option>

                            <option value="false">À Venda</option>

                        </select>

                    </div>


                <button type="submit" class="btn btn-primary">CRIAR</button>

        </form>

        <h2 align="center">Lista de Carros criados</h2>

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
                            <form>
                            <a href="/preparaAlterar?veiculo=${veiculo.marca}&marca=${veiculo.marca}" class="btn btn-warning mr-3">ALTERAR</a>
                            <a href="/veiculos/${veiculo.id}" data-method='delete' class="btn btn-danger mr-3">EXCLUIR</a>
                            </form>

                            </div>
                        </td>
                    </tr>
                </#list>
            </tbody>
        </table>

        <h2 align="center">Lista de Veículos não vendidos: ${contagemVeiculosNaoVendidos}</h2>

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

        <h2 align="center">Lista de Veículos registrados na última semana</h2>

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