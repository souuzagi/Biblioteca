
<?php
// Inclui o arquivo de configuração (conexão com banco de dados)
include "config.php";
// Verifica se a conexão com o banco foi bem-sucedida
if (!$conn){
    // Se a conexão falhar, exibe uma mensagem de erro e encerra a execução
    die("Falha na conexão: "  . mysqli_connect_error());
}

//recebe os dados do formulário
$nome = 'Gislaine Souza';
$dtnasc = '2008-10-20';
$celular = '(81)99999-9999';
$email = 'teste@teste.com';
$ra = '111111';
$endereço = 'Rua de Testa';
$num_end = '99';
$bairro = 'Janga';
$cidade = 'Paulista/PE';

//cria variável para inserir o registro
$sql = "INSERT INTO `leitores`
(`Nome`, `DtNasc`, `Celular`, `Email`, `RA`, `Endereco`, `NumEnd`, `Bairro`, `CidadeUF`) VALUES
 ('$nome','$dtnasc','$celular','$email','$ra','$endereço','$num_end','$bairro','$cidade')";

// Executa a consulta SQL. Se falhar, exibe o erro do banco de dados
$query = mysqli_query(mysql: $conn,query: $sql) or
die(mysqli_error(mysql: $db));

if($query){
    echo "<center>";
    echo "Cadastro realizado com sucesso!!<br>";
    echo "<a href='index.php'><button title='Home page'>Voltar</button></a>";
    echo "</center>";
} else {
    echo "<center>";
    echo "Erro ao cadastrar!!<br>";
    echo "<a href='index.php'><button title='Home page'>Voltar</button></a>";
    echo "</center>";
}
?>
