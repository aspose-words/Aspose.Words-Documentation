---
title: Converta PDF para outros formatos de documento em C#
second_title: Aspose.Words para .NET
articleTitle: Converta PDF para outros formatos de documento
linktitle: Converta PDF para outros formatos de documento
type: docs
description: "Converta PDF para formatos Word como DOCX, DOC, formatos de imagem como JPG ou PNG ou qualquer outro formato suportado por Aspose.Words usando C#."
keywords: convert pdf to other formats c#
weight: 45
url: /pt/net/convert-pdf-to-other-document-formats/
---

Aspose.Words pode carregar até mesmo um formato tão complexo como PDF. Isso abre novas oportunidades: é possível converter PDF para Word ou outros formatos que levam os usuários à frente na solução de muitos problemas aplicados.

## Pré-requisitos

* Adicionada referência ao pacote Aspose.Words ***OU*** para Aspose.Words.Pdf2Word.dll.
* Pelo menos .NET Framework 4.6.1 ou .NET Standard 2.0. Destinos como .NET Core 2.x ou 3.0, .NET 5 e Xamarin também são suportados por compatibilidade com .NET Standard.

## Converta PDF para vários formatos {#convert-pdf-to-other-formats}

A conversão mais popular de PDF é a conversão para formatos Microsoft Word, como DOCX, DOC, bem como formatos de imagem, como JPG ou PNG. Dito isso, a conversão de um documento de um formato para outro funciona de maneira familiar.

O exemplo de código a seguir mostra como converter um documento de PDF em DOCX:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Base conversions-PdfToDocx.cs" >}}

## Especifique as opções de carregamento ao importar PDF {#specify-load-options-when-importing-pdf}

Aspose.Words fornece a classe [PdfLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/), que permite um controle mais preciso sobre como os documentos PDF são carregados.

A maioria das propriedades herda ou sobrecarrega propriedades que já existem na classe `LoadOptions`. Além deles, várias propriedades são especificadas para o formato PDF. Por exemplo, você pode usar as propriedades [PageCount](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/pagecount/) e [PageIndex](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/pageindex/) para definir o intervalo de páginas a ser carregado de um documento PDF e as propriedades [SkipPdfImages](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/skippdfimages/) para controlar se as imagens devem ser ignoradas ao carregar o PDF. Outro parâmetro suportado é o [Password](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/password/), que deve ser fornecido para [documentos protegidos por senha](/words/net/protect-documents-and-parts-of-documents/).

## Conteúdo PDF suportado {#supported-pdf-content}

O plugin PDF2Word atualmente suporta os seguintes tipos de dados:

* Parágrafos de texto
* Imagens
* Tabelas
* Listas
* Cabeçalhos e rodapés
* Notas de rodapé
* Números de página
* Texto da direita para a esquerda (com algumas limitações)
* PDFs pesquisáveis (as imagens frontais serão removidas em favor do texto de fundo)

## Recursos futuros {#planned-features}

Alguns recursos ainda estão em desenvolvimento inicial ou incluídos no roteiro de desenvolvimento:

* Índice
* OCR para PDFs pesquisáveis e não pesquisáveis
* Relatório de progresso
* Texto multicoluna
* Fórmulas matemáticas
* Mais campos automáticos (além de `PAGE` e NUMPAGES)

## Exceções de carregamento de PDF

Durante a conversão de um documento PDF, pode ocorrer uma das seguintes exceções:

|  Exceção |  Descrição |
|  --------------------------------  |  ------------------------------------------------------------  |
|  `FileLoadException`               |  Um arquivo PDF não pode ser processado por algum motivo.<br /> {{% alert color="primary" %}}Você pode relatar o problema à equipe de desenvolvimento para uma investigação detalhada usando o [Suporte técnico](/words/pt/net/technical-support/).{{% /alert %}} |
|  `DrmProtectedFileException`       |  Um arquivo PDF é protegido pelo Adobe DRM e não pode ser decodificado pelo Pdf2Word |
|  `PasswordProtectedFileException`  |  A senha correta deve ser fornecida para um PDF protegido por senha |

## Veja também

* [Referência Nuget para Aspose.Words](https://www.nuget.org/packages/Aspose.Words/)

