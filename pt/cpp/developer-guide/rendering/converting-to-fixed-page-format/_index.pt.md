---
title: Convertendo para o formato de página fixa em C++
second_title: Aspose.Words para C++
articleTitle: Conversão para o formato de página Fixa
linktitle: Conversão para o formato de página Fixa
description: "Salvar documentos em PDF, XPS, HTML, XAML, PostScript, e PCL formatos."
type: docs
weight: 10
url: /pt/cpp/converting-to-fixed-page-format/
timestamp: 2024-09-24-14-35-44
---

Aspose.Words implementa seu próprio mecanismo de layout de página. Antes de se aprofundar nas suas especificações, vale a pena primeiro discutir documentos a um nível elevado.

## O que é um documento?

Ao pensar em um documento, os usuários normalmente imaginam uma série de folhas de papel contendo palavras, imagens, tabelas e gráficos. Os documentos podem ser de vários tipos, como texto, folhas de cálculo, diapositivos, CAD desenhos, fluxogramas e, por conseguinte, podem ter layouts essencialmente diferentes. A maioria dos aplicativos permite o envio de documentos para uma impressora; é quando um usuário pode realmente visualizar a aparência final pretendida do documento.

## Apresentação de um documento em várias aplicações

Vários aplicativos de visualização ou publicação de documentos permitem que os usuários abram (Adobe Acrobat, XPS Viewer) e, às vezes, editem (Adobe InDesign) documentos de formatos específicos. Estas aplicações produzem normalmente os chamados documentos em formato de" página fixa". Esse formato de documento descreve precisamente onde o conteúdo de um documento é colocado em cada página. Internamente, o formato PDF ou XPS contém uma descrição de cada página, bem como instruções de desenho, especificando o layout do conteúdo da página. Isto é semelhante aos formatos de imagem, descrevendo onde o conteúdo é mostrado na forma raster ou vetorial.

Em contrapartida, algumas aplicações de edição de texto não suportam a visualização das páginas de um documento. Por exemplo, o Microsoft Notepad suporta muito poucas funções além de simplesmente exibir, editar e imprimir texto. A observação importante aqui é que esses aplicativos não podem mostrar páginas do documento nem informar ao usuário quantas delas seriam impressas, permitindo apenas visualizar o conteúdo do documento. O documento pode ser salvo em formato de texto simples e pode ser aberto por muitos outros aplicativos. Usando um aplicativo que permite visualizar o conteúdo binário de um arquivo arbitrário, pode – se ver o que está armazenado no arquivo do documento-é apenas texto simples, não há mais nada nele.

Aplicativos de edição de texto um pouco mais sofisticados, como Microsoft WordPad, salvam o documento em formato Rich Text (RTF), que suporta mais funções de formatação, como inserção de imagens, formatação de caracteres, margens de parágrafo e espaçamento. No entanto, o formato RTF também contém apenas o conteúdo do documento, não tendo informações sobre as páginas.

Microsoft Word é o aplicativo de edição de texto mais avançado em Windows atualmente. Formata ficheiros no formato DOCX, que descreve o conteúdo do documento de forma flexível e extensiva, permitindo aos utilizadores especificar o tamanho da página, a orientação para uma secção do documento e, sendo uma aplicação WYSIWYG até mostrar páginas do documento no ecrã. No entanto, ainda não existem informações sobre a forma como o conteúdo do documento é apresentado nas páginas disponíveis no ficheiro do documento. O ficheiro do documento descreve apenas o conteúdo em si e a relação dos objectos do documento entre si, juntamente com algumas restrições geométricas. Como resultado, antes de exibir um documento, Microsoft Word calcula essa informação em si. É aqui que um layout de página entra em jogo.

## Ver Também

* [O que é um Layout de página](/words/cpp/what-is-a-page-layout/)
* [Criando um Layout de página](/words/cpp/creating-a-page-layout/)
* [Salvar um documento no formato de página Fixa](/words/cpp/saving-a-document-to-fixed-page-format/)
* [Especificar Opções De Disposição](/words/cpp/specify-layout-options/)
