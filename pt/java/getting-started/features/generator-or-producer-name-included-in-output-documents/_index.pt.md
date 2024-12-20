﻿---
title: Nome do produtor nas realizações
second_title: Aspose.Words para Java
articleTitle: Nome do gerador ou do produtor incluído nos documentos de saída
linktitle: Nome do gerador ou do produtor incluído nos documentos de saída
description: "Aspose.Words para Java Adicione ao documento o nome do gerador e o número da versão que foi usado para criá-lo. Esses dados podem ser encontrados no documento de maneiras que dependem do formato do arquivo de saída."
type: docs
weight: 70
url: /pt/java/generator-or-producer-name-included-in-output-documents/
timestamp: 2024-10-21-11-17-44
---

Você pode facilmente saber se um documento é produzido usando Aspose.Words para Java. Você também pode encontrar o número da versão de Aspose.Words para Java que foi usado para criar um documento de saída específico. Aspose.Words escreve directamente esta informação no documento gerado.

O número da versão é especificado no formato *YY.MM.N* ou *YY.M.N*, por exemplo, 23.12.0 ou 24.1.0.<br />
Aqui *YY* são os dois últimos dígitos do ano de lançamento, *M* ou *MM* é o mês de lançamento (1-12) e *N* é o número de lançamento secundário. Normalmente, *N* é "0".

{{% alert color="primary" %}}

Observe que você não pode instruir Aspose.Words a alterar ou remover essas informações dos documentos de saída.

{{% /alert %}}

Dependendo do formato do arquivo de saída, a tabela a seguir lista as maneiras que você pode usar para saber o nome do gerador e o número da versão.

| SaveFormat Valor | String, comentário ou campo escrito no arquivo | Como encontrar |
| :- | :- | :- |
| `Doc` | `AWJ.YY.M.N`<br />For example,<br />`AWJ.24.1.0` | DOC gerado por Aspose.Words obtém 8 bytes gravados. Você pode verificá-lo abrindo o arquivo em algum editor binário. |
| `Dot` | `AWJ.YY.M.N`<br />For example,<br />`AWJ.24.1.0` | DOT gerado por Aspose.Words obtém 8 bytes gravados. Você pode verificá-lo abrindo o arquivo em algum editor binário. |
| `Docx` | `<!-- Generated by Aspose.Words for Java YY.M.N -->`<br />por exemplo,<br />`<!-- Generated by Aspose.Words for Java 24.1.0 -->` | Renomeie o arquivo como .zip. Extrair o ZIP. Abra ~/Word/Document.xml para ver este comentário. |
| `Docm` | `<!-- Generated by Aspose.Words for Java YY.M.N -->`<br />por exemplo,<br />`<!-- Generated by Aspose.Words for Java 24.1.0 -->` | Renomeie o arquivo como .zip. Extrair o ZIP. Abra ~/Word/Document.xml para ver este comentário. |
| `Dotx` | `<!-- Generated by Aspose.Words for Java YY.M.N -->`<br />por exemplo,<br />`<!-- Generated by Aspose.Words for Java 24.1.0 -->` | Renomeie o arquivo como .zip. Extrair o ZIP. Abra ~/Document.xml para ver este comentário. |
| `Dotm` | `<!-- Generated by Aspose.Words for Java YY.M.N -->`<br />por exemplo,<br />`<!-- Generated by Aspose.Words for Java 24.1.0 -->` | Renomeie o arquivo como .zip. Extrair o ZIP. Abra ~/Word/Document.xml para ver este comentário. |
| `FlatOpc` | `<!-- Generated by Aspose.Words for Java YY.M.N -->`<br />por exemplo,<br />`<!-- Generated by Aspose.Words for Java 24.1.0 -->` | .o ficheiro xml contém este comentário. Você pode abri-lo no bloco de notas para ver este comentário. |
| `FlatOpcMacroEnabled` | `<!-- Generated by Aspose.Words for Java YY.M.N -->`<br />por exemplo,<br />`<!-- Generated by Aspose.Words for Java 24.1.0 -->` | .o ficheiro xml contém este comentário. Você pode abri-lo no bloco de notas para ver este comentário. |
| `FlatOpcTemplate` | `<!-- Generated by Aspose.Words for Java YY.M.N -->`<br />por exemplo,<br />`<!-- Generated by Aspose.Words for Java 24.1.0 -->` | .o ficheiro xml contém este comentário. Você pode abri-lo no bloco de notas para ver este comentário. |
| `FlatOpcTemplateMacroEnabled` | `<!-- Generated by Aspose.Words for Java YY.M.N -->`<br />por exemplo,<br />`<!-- Generated by Aspose.Words for Java 24.1.0 -->` | .o ficheiro xml contém este comentário. Você pode abri-lo no bloco de notas para ver este comentário. |
| `Rtf` | `{\*\generator Aspose.Words for Java YY.M.N;}`<br />por exemplo,<br />`{\*\generator Aspose.Words for Java 24.1.0;}` | .o ficheiro rtf contém este comentário. Você pode abri-lo no bloco de notas para ver este comentário. |
| `WordML` | `<!-- Generated by Aspose.Words for Java YY.M.N -->`<br />por exemplo,<br />`<!-- Generated by Aspose.Words for Java 24.1.0 -->` | .o ficheiro xml contém este comentário. Você pode abri-lo no bloco de notas para ver este comentário. |
| Pdf | <ul><li>**Application:** Aspose.Words</li><li>**PDF Producer:** `Aspose.Words for Java YY.M.N`, por exemplo,<br />`Aspose.Words for Java 24.1.0`</li></ul> | ![todo: image_alt_text](/words/java/generator-or-producer-name-included-in-output-documents/generator-or-producer-name-included-in-output-documents_1) |
| `Xps` | `<!-- Generated by Aspose.Words for Java YY.M.N -->`<br />por exemplo,<br />`<!-- Generated by Aspose.Words for Java 24.1.0 -->` | Renomeie o arquivo como .zip. Extrair o ZIP. Em XPS este comentário pode ser encontrado em ~ / Documents/1 / Pages / 1.fpage |
| `XamlFixed` | `<!-- Generated by Aspose.Words for Java YY.M.N -->`<br />por exemplo,<br />`<!-- Generated by Aspose.Words for Java 24.1.0 -->` | .o ficheiro xml contém este comentário. Você pode abri-lo no bloco de notas para ver este comentário. |
| `Svg` | `<!-- Generated by Aspose.Words for Java YY.M.N -->`<br />por exemplo,<br />`<!-- Generated by Aspose.Words for Java 24.1.0 -->` | .o ficheiro xml contém este comentário. Você pode abri-lo no bloco de notas para ver este comentário. |
| `HtmlFixed` | `<meta name="generator" content="Aspose.Words for Java YY.M.N" />`<br />por exemplo,<br />`meta name="generator" content="Aspose.Words for Java 24.1.0" />` | HTML o ficheiro contém esta etiqueta. Você pode abri-lo no bloco de notas para ver. |
| `OpenXps` | `<!-- Generated by Aspose.Words for Java YY.M.N -->`<br />por exemplo,<br />`<!-- Generated by Aspose.Words for Java 24.1.0 -->` | Renomeie o arquivo como .zip. Extrair o ZIP. Em OpenXps este comentário pode ser encontrado em ~ / Documents/1 / Pages / 1.fpage |
| `Ps` | `%Generated by Aspose.Words for Java YY.M.N`<br />por exemplo,<br />`%Generated by Aspose.Words for Java 24.1.0` | o ficheiro. ps contém este comentário. Você pode abri-lo no bloco de notas para ver este comentário. |
| `Pcl` |  |  |
| `Html` | `<meta name="generator" content="Aspose.Words for Java YY.M.N" />`<br />por exemplo,<br />`meta name="generator" content="Aspose.Words for Java 24.1.0" />` | HTML o ficheiro contém esta etiqueta. Você pode abri-lo no bloco de notas para ver. |
| `Mhtml` | `<meta name="generator" content="Aspose.Words for Java YY.M.N" />`<br />por exemplo,<br />`meta name="generator" content="Aspose.Words for Java 24.1.0" />` | MHTML o ficheiro contém esta etiqueta. Você pode abri-lo no bloco de notas para ver. |
| `Epub` | `<meta name="generator" content="Aspose.Words for Java YY.M.N" />`<br />por exemplo,<br />`meta name="generator" content="Aspose.Words for Java 24.1.0" />` | Renomeie o arquivo como .zip. Extrair o ZIP. Vá para ~/OEBPS/&lt;file_name&gt;.html. |
| `Odt` | `<!-- Generated by Aspose.Words for Java YY.M.N -->`<br />por exemplo,<br />`<!-- Generated by Aspose.Words for Java 24.1.0 -->` | Renomeie o arquivo como .zip. Extrair o ZIP. Verificar em ~/content.xml |
| `Ott` | `<!-- Generated by Aspose.Words for Java YY.M.N -->`<br />por exemplo,<br />`<!-- Generated by Aspose.Words for Java 24.1.0 -->` | Renomeie o arquivo como .zip. Extrair o ZIP. Verificar em ~/content.xml |
| `Text` |  |  |
| `XamlFlow` | `<!-- Generated by Aspose.Words for Java YY.M.N -->`<br />por exemplo,<br />`<!-- Generated by Aspose.Words for Java 24.1.0 -->` | .o ficheiro xml contém este comentário. Você pode abri-lo no bloco de notas para ver este comentário. |
| `XamlFlowPack` | `<!-- Generated by Aspose.Words for Java YY.M.N -->`<br />por exemplo,<br />`<!-- Generated by Aspose.Words for Java 24.1.0 -->` | .o ficheiro xml contém este comentário. Você pode abri-lo no bloco de notas para ver este comentário. |
| `Markdown` |  |  |
| `Tiff` |  |  |
| `Png` |  |  |
| `Bmp` |  |  |
| `Emf` |  |  |
| `Jpeg` |  |  |
| `Gif` |  |  |

{{% alert color="primary" %}}

Também há um acréscimo às variantes mostradas na tabela. O número da versão Aspose.Words pode ser escrito em vários outros locais para alguns formatos. Depende das configurações de exportação.

Estas situações adicionais não estão descritas no quadro supra.

{{% /alert %}}

