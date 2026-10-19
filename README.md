# 🧮 Calculadora Flutter

Uma calculadora mobile simples, colorida e funcional, desenvolvida com Flutter e Dart.

<p align="center">
  <img src="assets/capa-calculadora.png" alt="Capa do projeto Calculadora Flutter" width="100%">
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Flutter-Framework-02569B?style=for-the-badge&logo=flutter&logoColor=white" alt="Flutter">
  <img src="https://img.shields.io/badge/Dart-Linguagem-0175C2?style=for-the-badge&logo=dart&logoColor=white" alt="Dart">
  <img src="https://img.shields.io/badge/Plataforma-Android-3DDC84?style=for-the-badge&logo=android&logoColor=white" alt="Android">
</p>

<p align="center">
  Projeto de estudo • Interface mobile • Operações matemáticas • Histórico de cálculos
</p>

## 📌 Sobre o projeto

Este projeto é uma calculadora desenvolvida durante meus estudos de Flutter e Dart. A proposta é criar uma experiência simples e intuitiva, com botões coloridos, visor destacado e uma tela separada para consultar os cálculos realizados.

O projeto também explora o gerenciamento de estado e a navegação entre telas.

## ✨ Funcionalidades

| Recurso | Descrição |
|---|---|
| ➕ Operações básicas | Soma, subtração, multiplicação e divisão |
| 🔢 Números decimais | Entrada de valores decimais |
| 🧹 Limpar visor | Reinicia a operação atual |
| ⌫ Apagar dígito | Remove o último caractere digitado |
| 🧾 Histórico | Lista os cálculos realizados durante a execução |
| 📱 Interface mobile | Visor amplo, botões arredondados e cores distintas |

## 🎨 Interface

A interface utiliza uma barra superior azul, visor cinza e botões coloridos para facilitar a identificação das ações:

- 🔴 Vermelho: limpar.
- 🟠 Laranja: apagar o último dígito.
- 🔵 Azul: operações matemáticas.
- 🟢 Verde: calcular o resultado.
- ⚪ Cinza: números e separador decimal.

## 🧰 Tecnologias utilizadas

- **Flutter:** framework para desenvolvimento de aplicações multiplataforma.
- **Dart:** linguagem utilizada para implementar a interface e a lógica.
- **Android Studio:** ferramentas para o SDK e o emulador Android.
- **Visual Studio Code:** editor utilizado no desenvolvimento.

## 📂 Organização do código

```text
lib/
├── main.dart
└── pages/
    ├── calculator.page.dart
    └── historic.page.dart
```

- `main.dart`: inicializa o aplicativo e mantém o histórico da sessão.
- `calculator.page.dart`: contém o visor, os botões e a lógica das operações.
- `historic.page.dart`: apresenta a lista de cálculos realizados.

## 🚀 Como executar o projeto

### Pré-requisitos

- Flutter SDK instalado e configurado.
- Android Studio com o Android SDK.
- Um emulador Android iniciado ou um dispositivo conectado.

### Instalação

1. Clone o repositório:

   ```bash
   git clone https://github.com/jp-devl/Calculator.git
   ```

2. Entre na pasta do projeto:

   ```bash
   cd Calculator
   ```

3. Baixe as dependências:

   ```bash
   flutter pub get
   ```

4. Confira os dispositivos disponíveis:

   ```bash
   flutter devices
   ```

5. Execute o aplicativo:

   ```bash
   flutter run
   ```

Para executar no Chrome, se estiver configurado:

```bash
flutter run -d chrome
```

## 🗺️ Próximas melhorias

- [ ] Salvar o histórico mesmo depois de fechar o aplicativo.
- [ ] Adicionar opção para limpar o histórico.
- [ ] Melhorar o tratamento de expressões matemáticas.
- [ ] Adicionar testes automatizados.
- [ ] Disponibilizar capturas de tela do aplicativo em execução.

## 📚 Objetivo de aprendizado

Este projeto faz parte da minha prática com desenvolvimento mobile e tem como objetivo consolidar conhecimentos de Flutter, Dart, widgets, gerenciamento de estado e navegação entre telas.

---

<p align="center">
  Feito com 💙 e Flutter
  <br>
  Obrigado por visitar este projeto!
</p>
