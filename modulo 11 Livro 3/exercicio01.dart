import 'dart:io';
void main() {
  String clientes = "Cod_cli,Nome,Endereco";
  String recebimentos = "Num_doc,Valor_doc,Data_emissao,Data_vencimento,Cod_Cli";

  final arquivoCli = File('clientes.csv').openWrite();;
  final arquivoReceb = File('recebimentos.csv').openWrite();;

  arquivoCli.writeln(clientes);
  arquivoCli.close();

  arquivoReceb.writeln(recebimentos);
  arquivoReceb.close();
}