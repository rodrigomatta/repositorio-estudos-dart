class Usuario {
  late String _email;
  
  void set email(String email){
    //validação de e-mail
    this._email = email + ' - alteração';
  }

  // String get email{
  //   return this._email + ' - mais informações';
  // }
  String get email => this._email;
}

void main() {
  Usuario u1 = Usuario();
  u1.email = "usuario10@gmail.com";
  print(u1.email);
}