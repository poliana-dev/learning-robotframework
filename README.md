# PARA QUÊ SERVE O ROBOT FRAMEWORK?
- É um framework de automação (teste de software);
- Linguagem base dele é Python; 
- É Baseado em palavras chave (keyword);
- Realiza testes web, mobile, desktop e de API, por isso, ele é bastante versátil.

---

# COMO INSTALAR?

1. Realize o download da linguagem Python;
2. Instale o Robot Framework:

    2.1 - *Abra o cmd e digite:*
    ```cmd
        pip install robotframework
    ```

    2.2 - *Verifique se está tudo correto:*
    ```cmd 
    pip --version
    ```
    2.3 - *Instale a biblioteca desejada (Neste caso vou instalar a Selenium)*
    ```cmd
    pip install robotframework-seleniumlibrary
    ```
    - Ela serve para automatizar a interação com navegadores web

3. Configure o Robot Framework:

    Após esse processo, você deve instalar o um arquivo __chromedriver__, que fica disponivel no seguinte site: https://sites.google.com/chromium.org/driver/downloads?authuser=0

    Mas, antes de instalar um __chromedriver__ você deve verificar a versão do seu Chrome ou do Chromium do seu navegador em ajuda/sobre. (Neste momento estou utilizando o Brave, versão Chromium 136/64 bits.)

    Com o arquivo instalado, vá nos arquivos do seu computador e procure o caminho do `Scripts` do Python. 
    
    Exemplo: 
    `C:\Users\seu-usuario\AppData\Local\Programs\Python\Python310\Scripts\`

    Você pode encontra-lo pesquisando por: __Editar as variáveis de ambiente do sistema__/__variaveis de ambiente__. Depois selecione __Path__ e copie o caminho parecido com o exemplo acima. 

    Com o caminho em mãos, vá em acesso rápido, cole o caminho copiado e, depois, copie e cole o arquivo __chromedrive__ no local.

4. Se você estiver utilizando o Visual Studio Code, instale a extensão __Robot Framework Language Server__

5. Teste o ambiente com o codigo disponível nesse repositório no arquivo `teste.robot`.

# ESTRUTURA
É importante possuir boas práticas para obter uma leitura e compreensão excelente! Portando segue:

- Organize sua área:
```python
*** Settings ***
# Coloque as bibliotecas que irão ser usadas aqui.

*** Variables ***
# Defina suas varíaveis em um local especifico e rápido.

*** Keywords ***
# Crie suas palavras chave para determinada ação. 

*** Test Cases ***
# Elabore seus testes/cenários aqui.
```

- Exemplo de uso prático:
```python
*** Settings ***

Library    SeleniumLibrary
# Biblioteca  -->  #Nome da biblioteca
### AVISO: Aperte a tecla tab para validar sua ação.


*** Variables ***


*** Keywords ***
abrir site google # Palavra chave criada 
    Open Browser    https://google.com.br     chrome 
    #Metodo da biblioteca -->  url  -->      navegador que será aberto
fechar navegador  
    Close Browser
    # Método da biblioteca

abrir site globo
    Open Browser    https://www.globo.com/    chrome


*** Test Cases ***
Cenário 1: Abrir site google # Criei meu cenário (Escreva algo que descreva sua ação)
    abrir site google 
    fechar navegador
    # Usando keyword para manter um código limpo e legível
    

Cenário 2: Abrir site da globo
    abrir site globo
    fechar navegador

```

   
   
        
    

