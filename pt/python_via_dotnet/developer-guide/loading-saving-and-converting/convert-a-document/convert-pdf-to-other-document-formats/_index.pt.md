---
title: Converta PDF para outros formatos de documento
second_title: Aspose.Words para Python via .NET
articleTitle: Converta PDF para outros formatos de documento
linktitle: Converta PDF para outros formatos de documento
type: docs
description: "Converta PDF para formatos Word como DOCX, DOC, formatos de imagem como JPG ou PNG ou qualquer outro formato suportado pelo Aspose usando `Python.Words`."
keywords: convert pdf to other formats python
weight: 45
url: /pt/python-net/convert-pdf-to-other-document-formats/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words pode carregar até mesmo um formato tão complexo como PDF. Isso abre novas oportunidades: é possível converter PDF para Word ou outros formatos que levam os usuários à frente na solução de muitos problemas aplicados.

## Converter PDF para outros formatos {#convert-pdf-to-other-formats}

A conversão mais popular de PDF é a conversão para formatos Microsoft Word, como DOCX, DOC, bem como formatos de imagem, como JPG ou PNG. Dito isso, a conversão de um documento de um formato para outro funciona de maneira familiar.

O exemplo de código a seguir mostra como converter um documento de PDF em DOCX:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-PdfToDocx.py" >}}

## Especifique as opções de carregamento ao importar PDF {#specify-load-options-when-importing-pdf}

Aspose.Words fornece a classe [PdfLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/), que permite um controle mais preciso sobre como os documentos PDF são carregados.

A maioria das propriedades herda ou sobrecarrega propriedades que já existem na classe [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/). Além deles, várias propriedades são especificadas para o formato PDF. Por exemplo, você pode usar as propriedades [page_count](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/page_count/) e [page_index](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/page_index/) para definir o intervalo de páginas a ser carregado de um documento PDF e as propriedades [skip_pdf_images](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/skip_pdf_images/) para controlar se as imagens devem ser ignoradas ao carregar o PDF. Outro parâmetro suportado é o [password](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/password/), que deve ser fornecido para documentos protegidos por senha.

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

## Recursos planejados {#planned-features}

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
|   *FileLoadException*               |  Um arquivo PDF não pode ser processado por algum motivo.<br /> {{% alert color="primary" %}}Você pode relatar o problema à equipe de desenvolvimento para uma investigação detalhada usando o [Suporte técnico](/words/pt/python-net/technical-support/).{{% /alert %}} |
|   *DrmProtectedFileException*       |  Um arquivo PDF é protegido pelo Adobe DRM e não pode ser decodificado pelo Pdf2Word |
|   *PasswordProtectedFileException*  |  A senha correta deve ser fornecida para um PDF protegido por senha |


