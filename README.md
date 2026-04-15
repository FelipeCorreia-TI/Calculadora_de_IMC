# 🧮 Calculadora de IMC (Delphi)

Este é um projeto simples de **Calculadora de IMC (Índice de Massa Corporal)** desenvolvido em **Delphi**, com o objetivo de praticar conceitos básicos de programação, lógica e construção de interfaces gráficas.

---

## 📌 Sobre o projeto

A aplicação permite que o usuário informe:

- Nome  
- Altura  
- Peso  

E, com base nesses dados, calcula o **IMC** e exibe a classificação correspondente.

---

## ⚙️ Funcionalidades

- ✔️ Entrada de dados pelo usuário  
- ✔️ Cálculo automático do IMC  
- ✔️ Classificação baseada nos padrões de saúde  
- ✔️ Validação de campos obrigatórios  
- ✔️ Interface gráfica simples e funcional  

---

## 🖥️ Interface

A interface foi construída utilizando componentes padrão do Delphi:

- `TEdit` para entrada de dados  
- `TLabel` para identificação dos campos  
- `TButton` para execução do cálculo  
- `TPanel` para organização visual  

---

## 🧠 Lógica do cálculo

O cálculo do IMC é feito utilizando a fórmula:


IMC = Peso / (Altura × Altura)


### Classificação:

- Abaixo de 18.5 → Magreza  
- 18.5 até 24.9 → Normal  
- 25.0 até 29.9 → Sobrepeso  
- 30.0 até 39.9 → Obesidade  
- Acima de 40 → Obesidade Grave  

---

## 🚀 Tecnologias utilizadas

- Delphi (Object Pascal)
- VCL (Visual Component Library)

---

## 📚 Aprendizados

Durante o desenvolvimento deste projeto, foram praticados:

- Estrutura de um projeto Delphi  
- Manipulação de eventos (`OnClick`)  
- Entrada e conversão de dados (`StrToFloat`)  
- Estruturas condicionais (`if/else`)  
- Organização básica de interface  

