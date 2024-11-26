---
title: Imprimindo um documento em C#
second_title: Aspose.Words para .NET
articleTitle: Imprimindo um documento programaticamente ou usando caixas de diálogo
linktitle: Imprimindo um documento programaticamente ou usando caixas de diálogo
description: "Imprima um documento em um Server usando o XpsPrint API não gerenciado ou por meio de uma impressora selecionada com configurações e caixas de diálogo de visualização de impressão em C#."
type: docs
weight: 55
url: /pt/net/print-a-document-programmatically-or-using-dialogs/
timestamp: 2024-01-31-14-23-37
---

Este artigo descreve como imprimir um documento de processamento de texto de um aplicativo ASP.NET ou Windows Service usando Aspose.Words e `XpsPrint` API. Ele também demonstra os métodos de impressão de um documento com as caixas de diálogo Configurações, Visualização de impressão e Progresso da impressão, e explica como reduzir o tempo da primeira chamada para imprimir um documento.

## Imprimindo um documento em um Server através do API `XpsPrint`

Esta seção é destinada a usuários que desejam enviar um documento XPS para o XpsPrint API não gerenciado a partir de um aplicativo .NET usando Aspose.Words.

### Limitações de impressão de um documento nos aplicativos ASP.NET ou Windows Service

Ao desenvolver um aplicativo .NET que produz alguma saída impressa, normalmente você pode usar classes fornecidas no namespace *System.Drawing.Printing* ou classes Windows Presentation Foundation (WPF). No entanto, se o aplicativo for ASP.NET ou Windows Service, as opções de impressão serão limitadas, porque o Microsoft desencoraja o uso dessa abordagem. As classes de impressão .NET Framework não são suportadas pelo aplicativo de serviços. Isso inclui páginas ASP, que geralmente são executadas no contexto do serviço do servidor.

As classes dentro do namespace *System.Drawing.Printing* não são suportadas para uso em um serviço Windows ou em um aplicativo ou serviço ASP.NET, e tentar usá-las pode produzir diminuição no desempenho do serviço, exceções de tempo de execução e outros problemas. Da mesma forma, o uso do WPF para construir serviços Windows não é suportado. Como o WPF é uma tecnologia de apresentação, o serviço Windows requer permissões apropriadas para realizar operações visuais que envolvem interação do usuário. Se o serviço Windows não tiver essas permissões, poderão ocorrer resultados inesperados.

O objeto Aspose.Words [Document](https://reference.aspose.com/words/net/aspose.words/document/) fornece uma família de métodos [Print](https://reference.aspose.com/words/net/aspose.words/document/methods/print/index) para imprimir documentos. Esses métodos usam as classes de impressão .NET definidas no namespace *System.Drawing.Printing*. Existem muitos clientes Aspose.Words que os utilizam com sucesso para impressão em seus aplicativos do lado do servidor. No entanto, este artigo demonstra um método alternativo de impressão que está em conformidade com as recomendações do Microsoft.

### Métodos para imprimir um documento em Server

A maneira correta de imprimir documentos de acordo com Microsoft é usando o XpsPrint API não gerenciado. Este API está disponível em Windows 7, Windows Server 2008 R2 e em Windows Vista, desde que a atualização da plataforma para Windows Vista esteja instalada.

Como o Aspose.Words pode converter facilmente qualquer documento em XPS, você só precisa escrever o código que passa um documento XPS para o `XpsPrint` API. O único problema é que o `XpsPrint` API não é gerenciado e requer algum conhecimento da tecnologia Platform Invoke.

Para imprimir um documento, Aspose.Words fornece uma classe **XpsPrintHelper** que contém um método Print simples, onde basta especificar os seguintes parâmetros (veja mais detalhes no artigo [Imprimir documento via XPS API](/words/net/missing-features-in-openxml/)):

- Documento que deseja imprimir.
- Nome da impressora.
- Nome do trabalho (opcional).
- Valor booleano, especificando se o programa deve esperar até que o trabalho de impressão seja concluído. Portanto, o sistema irá verificar se o documento foi impresso com sucesso ou retornará imediatamente após o envio do trabalho de impressão. Neste último caso, é impossível identificar se o trabalho de impressão foi bem-sucedido.

Ao encontrar qualquer problema ao enviar ou imprimir o documento, o método lançará uma exceção.

O exemplo de código abaixo mostra como imprimir um documento usando a classe **XpsPrintHelper**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintDocViaXpsPrint-PrintDocViaXpsPrint.cs" >}}

Ao executar o projeto, ele imprime um documento de amostra na impressora especificada e abre uma janela do console para exibir os resultados da impressão. Quando o trabalho de impressão for concluído ou ocorrer um erro, o sistema exibirá uma mensagem de sucesso ou o texto da exceção lançada.

Você também pode definir algumas configurações de impressão usando a classe [PageSetup](https://reference.aspose.com/words/net/aspose.words/pagesetup/). Por exemplo, no Microsoft Word, as bandejas da impressora são definidas para cada seção e são específicas da impressora. Portanto, você pode alterar programaticamente esses valores para cada seção por meio das propriedades [FirstPageTray](https://reference.aspose.com/words/net/aspose.words/pagesetup/firstpagetray/) e [OtherPagesTray](https://reference.aspose.com/words/net/aspose.words/pagesetup/otherpagestray/).

{{% alert color="primary" %}}

Em alguns casos, pode ser necessário usar este exemplo sem Aspose.Words. Por exemplo, quando você já possui um documento XPS e deseja apenas imprimi-lo a partir de um aplicativo de serviço ASP.NET ou Windows. Então, você pode simplesmente excluir o método `Print`.

{{% /alert %}}

Existem duas sobrecargas do método **XpsPrintHelper**.**Print**. A primeira sobrecarga pega um objeto [Document](https://reference.aspose.com/words/net/aspose.words/document/) e o salva em `MemoryStream` no formato XPS. A segunda sobrecarga aceita um objeto `Stream`. O stream deve conter um documento no formato XPS.

Você pode baixar os exemplos de sobrecarga de método em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/download/MissingFeaturesofOpenXMLWordsv1.1/Print.Document.via.XPS.API.zip).

Você pode baixar o arquivo de amostra deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

## Imprimindo um documento com configurações e caixas de diálogo de visualização de impressão

Ao trabalhar com documentos, muitas vezes é necessário imprimi-los em uma impressora selecionada. É útil utilizar uma caixa de diálogo de visualização de impressão para inspecionar visualmente como o documento impresso aparecerá e escolher opções de impressão relevantes.

O Aspose.Words não possui diálogos ou formulários integrados, mas implementa a classe [AsposeWordsPrintDocument](https://reference.aspose.com/words/net/aspose.words.rendering/asposewordsprintdocument/), baseada na classe .NET **PrintDocument**. Uma instância desta classe pode ser passada para o formulário **PrintPreviewDialog** para visualizar e imprimir o documento. Além disso, a classe [ImprimirPreviewDialog](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.printpreviewdialog?view=netframework-4.8) define a saída a ser transmitida para uma impressora.

O exemplo a seguir mostra como usar essas classes para imprimir um documento Aspose.Words por meio das caixas de diálogo Visualização de impressão e Configurações:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintPreviewSettingsDialog-PrintPreviewSettingsDialog.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintPreviewSettingsDialog-PrintPreviewSettingsDialogEvent.cs" >}}

{{% alert color="primary" %}}

A propriedade **AllowSomePages** permite selecionar um intervalo de páginas para impressão se o valor desta propriedade for True. Por padrão, todas as páginas do intervalo são selecionadas para impressão.

{{% /alert %}}

Para otimizar a aparência das configurações da caixa de diálogo Visualização de impressão, especifique as propriedades da classe **PrintPreviewDialog**.

## Imprimindo várias páginas em uma folha

É sempre benéfico ter mais flexibilidade na impressão de documentos. Usando .NET e Aspose.Words você pode facilmente ajustar a operação de impressão para implementar sua lógica personalizada, definindo a forma como o documento aparecerá na página impressa.

Como na seção anterior, Aspose.Words implementa a classe **MultipagePrintDocument**, que é baseada na classe .NET **PrintDocument**. Isto significa que a infra-estrutura de impressão .NET existente pode ser usada de tal forma que as caixas de diálogo de impressão e visualização de impressão permitiriam a visualização do documento antes da impressão. A classe **MultipagePrintDocument** oferece a capacidade de imprimir várias páginas em uma folha de papel.

{{% alert color="primary" %}} You can download an example of using the **MultipagePrintDocument** class from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/MultipagePrintDocumentExample). {{% /alert %}}

O resultado deste exemplo de código é mostrado abaixo:

![print-a-document-programmatically-or-using-dialogs-aspose-words-net](/words/net/print-a-document-programmatically-or-using-dialogs/print-a-document-programmatically-or-using-dialogs-1.png)

## Ocultando a caixa de diálogo de andamento da impressão ao imprimir um documento

A caixa de diálogo Progresso da impressão não aparece ao imprimir um documento pelo método [Print](https://reference.aspose.com/words/net/aspose.words/document/print/). No entanto, esta caixa de diálogo aparece durante a impressão com outro método [Print](https://reference.aspose.com/words/net/aspose.words.rendering/asposewordsprintdocument/). Neste caso, para evitar que a caixa de diálogo Impressão apareça, você deve especificar configurações válidas da impressora e um controlador de impressão padrão neste método, conforme mostrado no exemplo abaixo:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintProgressDialog-PrintProgressDialog.cs" >}}

Você pode baixar o arquivo de amostra deste exemplo em [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

## Como reduzir o tempo da primeira chamada para imprimir um documento

Aspose.Words lê e armazena em cache alguns campos do **PrinterSettings** para reduzir o tempo de impressão. Você pode conseguir isso chamando o método [CachePrinterSettings](https://reference.aspose.com/words/net/aspose.words.rendering/asposewordsprintdocument/cacheprintersettings/). Este método é chamado antes do início da impressão se não tiver sido executado anteriormente. Observe que o tempo total de impressão com e sem chamada deste método é quase o mesmo. O objetivo da utilização deste método é reduzir o tempo da primeira chamada do método [Print](https://reference.aspose.com/words/net/aspose.words/document/print/). O exemplo de código a seguir mostra como usar esse método:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-Print_CachePrinterSettings-CachePrinterSettings.cs" >}}

## Veja também

- [Atualização de plataforma para Windows Vista](https://docs.microsoft.com/en-us/windows/win32/win7ip/platform-update-for-windows-vista-overview)
