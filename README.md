<div align="center">

🧮 Calculadora Flutter
Uma calculadora mobile simples, colorida e funcional — feita com Flutter e Dart.
<p>
  <img src="assets/capa-calculadora.png" alt="Capa do projeto Calculadora Flutter" width="100%">
</p>

<p>
  <img src="https://img.shields.io/badge/Flutter-Framework-02569B?style=for-the-badge&logo=flutter&logoColor=white" alt="Flutter">
  <img src="https://img.shields.io/badge/Dart-Linguagem-0175C2?style=for-the-badge&logo=dart&logoColor=white" alt="Dart">
  <img src="https://img.shields.io/badge/Plataforma-Android-3DDC84?style=for-the-badge&logo=android&logoColor=white" alt="Android">
</p>

<p>
  <strong>Projeto de estudo • Interface mobile • Operações matemáticas • Histórico de cálculos</strong>
</p>

</div>

📌 Sobre o projeto
Este projeto é uma calculadora desenvolvida durante meus estudos de Flutter e Dart. A proposta é criar uma experiência simples e intuitiva, com botões coloridos, visor destacado e uma tela separada para consultar os cálculos realizados.

Além de praticar a construção de interfaces, o projeto explora o gerenciamento de estado e a navegação entre telas.
✨ Funcionalidades
Recurso	Descrição
➕ Operações básicas	Soma, subtração, multiplicação e divisão
🔢 Números decimais	Entrada de valores com casas decimais
🧹 Limpar visor	Reinicia a operação atual
⌫ Apagar dígito	Remove o último caractere digitado
🧾 Histórico	Lista os cálculos feitos durante a execução
📱 Interface mobile	Layout com visor amplo, botões arredondados e cores distintas


🎨 Interface
A interface usa uma barra superior azul-clara, visor cinza e botões com cores para facilitar a identificação das ações:
- 🔴 Vermelho: limpar
- 🟠 Laranja: apagar o último dígito
- 🔵 Azul: operações matemáticas
- 🟢 Verde: calcular o resultado
- ⚪ Cinza: números e separador decimal
🧰 Tecnologias utilizadas
- Flutter — framework para desenvolvimento de aplicações multiplataforma.
- Dart — linguagem utilizada para implementar a interface e a lógica.
- Android Studio — ferramentas para SDK e emulador Android.
- Visual Studio Code — editor utilizado no desenvolvimento.
📂 Organização do código
lib/
├── main.dart
└── pages/
    ├── calculator.page.dart
    └── historic.page.dart
- main.dart: inicializa o aplicativo e mantém a lista de cálculos da sessão.
- calculator.page.dart: contém o visor, os botões e a lógica das operações.
- historic.page.dart: apresenta a lista de cálculos realizados.
🚀 Como executar o projeto
Pré-requisitos
- Flutter SDK instalado e configurado.
- Android Studio com o Android SDK para executar no emulador Android.
- Um emulador iniciado ou um dispositivo conectado. Para executar no navegador, o Chrome instalado.
Confira a configuração do Flutter:
flutter doctor
Instalação
1. Clone o repositório:
   git clone https://github.com/SEU-USUARIO/SEU-REPOSITORIO.git
2. Entre na pasta do projeto:
   cd SEU-REPOSITORIO
3. Baixe as dependências:
   flutter pub get
4. Confira os dispositivos disponíveis:
   flutter devices
5. Execute no emulador ou dispositivo Android:
   flutter run
Para executar no Chrome:
flutter run -d chrome
Dica: substitua SEU-USUARIO/SEU-REPOSITORIO pelo endereço real do seu repositório no GitHub.

🗺️ Próximas melhorias
- [ ] Salvar o histórico mesmo depois de fechar o aplicativo.
- [ ] Adicionar opção para limpar o histórico.
- [ ] Melhorar o tratamento de operações encadeadas e expressões matemáticas.
- [ ] Adicionar testes automatizados.
- [ ] Disponibilizar capturas de tela reais do aplicativo em execução.
📚 Objetivo de aprendizado
Este projeto faz parte da minha prática com desenvolvimento mobile e tem como objetivo consolidar conhecimentos de Flutter, Dart, widgets, estado e navegação entre telas.
<div align="center">

Feito com 💙 e Flutter

Obrigado por visitar este projeto!
</div>
