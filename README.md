# 📊 Calculadora de IMC (Delphi VCL)

Aplicação desktop desenvolvida em **Delphi** para cálculo do **IMC (Índice de Massa Corporal)**, com validações de entrada e classificação automática do resultado.

---

## 🚀 Sobre o projeto

Este projeto consiste em uma aplicação com interface gráfica (VCL) que permite ao usuário:

- Informar nome, altura e peso
- Calcular o IMC
- Visualizar a classificação de forma simples e direta

Além do cálculo, o sistema implementa validações para evitar erros comuns de entrada de dados.

---

## 🧮 Funcionalidades

✔ Entrada de dados:
- Nome do usuário  
- Altura  
- Peso  

✔ Validações:
- Campos obrigatórios  
- Bloqueio de caracteres inválidos  
- Impede valores zero (evita divisão por zero)  

✔ Cálculo automático do IMC  

✔ Exibição do resultado via mensagem  

✔ Classificação baseada no IMC  

-----
## 📊 Classificação utilizada

| IMC               | Classificação        |
|------------------|---------------------|
| < 18.5           | Magreza             |
| 18.5 – 24.9      | Normal              |
| 25 – 29.9        | Sobrepeso           |
| 30 – 39.9        | Obesidade           |
| > 40             | Obesidade Grave     |

---

## 🛠 Tecnologias utilizadas

- Delphi (Object Pascal)
- VCL (Visual Component Library)
- Windows API (MessageBox)

---

## ▶️ Como executar o projeto

### 🔧 Pré-requisitos

- Delphi instalado (ex: Delphi 7, XE, ou superior)

### ▶ Passo a passo

1. Clone o repositório:
```bash
git clone https://github.com/FelipeCorreia-TI/Calculadora_de_IMC.git

