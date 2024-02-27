---
title: Aspose.Words para .NET via COM Interop
second_title: Aspose.Words para .NET
articleTitle: Como usar Aspose.Words para .NET via COM Interop
linktitle: Como usar Aspose.Words para .NET via COM Interop
type: docs
description: "Use Aspose.Words para .NET via COM Interop em Python, PHP, VBScript, JScript e outras linguagens de programação."
weight: 130
url: /pt/net/how-to-use-aspose-words-via-com-interop/
---

As informações neste tópico se aplicam a cenários em que você deseja usar Aspose.Words para .NET via COM Interop em qualquer uma das seguintes linguagens de programação:

- ASP
- Delphi ([Exemplo](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/ReleasePreparation/Showcases/Aspose_Words_for_NET_via_COM_Delphi))
-JScript
- Perl
- PHP
- PowerBuilder
- Python
-VBScript
- Visual Basic

## Trabalhar com COMInterop

Aspose.Words para .NET é executado sob o controle do .NET Framework e isso é chamado de código gerenciado. O código escrito em todas as linguagens acima é executado fora do .NET Framework e é chamado de código não gerenciado. A interação entre o código não gerenciado e o Aspose.Words ocorre por meio do recurso .NET chamado COM Interop.

Objetos Aspose.Words são objetos .NET, mas quando usados via COM Interop, aparecem como objetos COM em sua linguagem de programação. Portanto, é melhor saber como criar e usar objetos COM em sua linguagem de programação antes de começar a usar Aspose.Words.

Aqui estão os tópicos que você eventualmente precisará dominar:

- Utilizando objetos COM em sua linguagem de programação. Consulte a documentação da sua linguagem de programação e os tópicos específicos da linguagem nesta documentação.
- Trabalhar com objetos COM expostos por .NET COM Interop. Consulte [Interoperando com código não gerenciado](https://learn.microsoft.com/en-us/dotnet/framework/interop/) e [Expondo componentes .NET Framework ao COM](https://learn.microsoft.com/en-us/dotnet/framework/interop/exposing-dotnet-components-to-com) no MSDN.
- Modelo de objeto de documento Aspose.Words. Consulte Aspose.Words [Guia do desenvolvedor](/words/pt/net/developer-guide/) e [API Reference](https://reference.aspose.com/words/net/).

## Registre Aspose.Words para .NET com COM Interop

Após o [Instalação](/words/pt/net/installation/), você precisa registrar o Aspose.Words para COM Interop usando o utilitário `regasm.exe`.

`regasm.exe` é uma ferramenta incluída no .NET Framework SDK. Todas as ferramentas SDK .NET Framework estão localizadas no diretório `%windir%\Microsoft .NET\Framework\<FrameworkVersion>\`, por exemplo *C:\Windows\Microsoft .NET\Framework\v4.0.30319*.

Para obter o arquivo tlb, execute `C:\Windows\Microsoft.NET\Framework\v4.0.30319\RegAsm.exe <installdir>\lib\net40-client\Aspose.Words.dll /tlb /codebase` em cmd, onde `<installdir>` é o diretório onde você instalou o Aspose.Words, normalmente `%USERPROFILE%\.nuget\packages\aspose.words\`.

## Trabalhe com Aspose.Words via COM Interop

### ProgIDs

ProgID significa "identificador programático", é o nome de uma classe `COM` que você precisa usar para criar um objeto.

Atualmente, Aspose.Words define quatro objetos COM criáveis publicamente. Seus ProgIDs são:

-ComHelper
- Documento
- DocumentBuilder
- Licença

O ProgIDs consiste no nome da biblioteca ("Aspose.Words") e no nome da classe.

### Biblioteca de tipos

Durante a instalação, o Aspose.Words.tlb (biblioteca de tipos COM) é copiado para o seu computador para:

- Para .NET Framework 4.0 para **<installdir>\lib\net40-cliente**

Se a sua linguagem de programação (por exemplo Visual Basic ou Delphi) permitir que você faça referência a uma biblioteca de tipos `COM`, adicione uma referência ao **Aspose.Words.tlb** e você poderá ver todas as classes, métodos, propriedades e enumerações Aspose.Words no seu Navegador de objetos.

### Criando objetos COM

A criação de um objeto .NET é semelhante à criação de um objeto COM normal:

**VBScript**

```
Ajudante escuro
Definir auxiliar = CreateObject("Aspose.Words.ComHelper")
 
```

Depois de criado, você poderá acessar os métodos e propriedades do objeto, como se fosse um objeto `COM`:

**VBScript**

```
Documento escuro
Definir doc = helper.Open("C:\meu.doc")
 
```

Alguns métodos possuem sobrecargas e serão expostos por COM Interop com um sufixo numérico adicionado a eles, exceto o primeiro método que permanece inalterado. Por exemplo, as sobrecargas de métodos `Document.Save` tornam-se `Document.Save`, `Document.Save_2`, `Document.Save_3` e assim por diante.

Para obter mais informações, consulte os artigos específicos do idioma nesta documentação.

### Criando uma montagem wrapper

Se você precisar usar muitas classes, métodos e propriedades Aspose.Words, considere criar um assembly wrapper (usando C# ou qualquer outra linguagem de programação .NET), que ajudará a evitar o uso de Aspose.Words diretamente de código não gerenciado.

Uma boa abordagem é desenvolver um assembly .NET que faça referência ao Aspose.Words e faça todo o trabalho com ele, expondo apenas o conjunto mínimo de classes e métodos ao código não gerenciado. Seu aplicativo deverá funcionar apenas com sua biblioteca wrapper.

Reduzir o número de classes e métodos que você precisa invocar via COM Interop pode simplificar seu projeto, porque o uso de classes .NET via COM Interop geralmente requer habilidades avançadas.