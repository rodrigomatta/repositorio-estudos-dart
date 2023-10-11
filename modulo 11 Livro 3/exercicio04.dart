import 'dart:io';
void main() {
  String clientes = "Cod_cli,Nome,Endereco\n";
  String recebimentos = "Num_doc,Valor_doc,Data_emissao,Data_vencimento,Cod_Cli\n";

  final arquivoCli = File('clientes.csv');
  final arquivoReceb = File('recebimentos.csv');

  arquivoReceb.openSync();
  arquivoCli.openSync();

  arquivoCli.writeAsString('');
  arquivoReceb.writeAsString('');

  arquivoCli.writeAsStringSync(clientes,mode: FileMode.writeOnlyAppend);
  arquivoReceb.writeAsStringSync(recebimentos,mode: FileMode.writeOnlyAppend);
}