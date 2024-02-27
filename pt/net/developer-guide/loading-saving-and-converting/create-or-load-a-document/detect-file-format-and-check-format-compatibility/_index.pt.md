---
title: Detectar formato de arquivo ao carregar
second_title: Aspose.Words para .NET
articleTitle: Detecte o formato do arquivo e verifique a compatibilidade do formato
linktitle: Detecte o formato do arquivo e verifique a compatibilidade do formato
description: "Determine o formato do arquivo em C# se não tiver certeza de qual é o conteúdo real do arquivo ou para verificar a compatibilidade do formato."
type: docs
weight: 20
url: /pt/net/detect-file-format-and-check-format-compatibility/
---

Às vezes é necessário determinar o formato de um documento antes de abri-lo porque a extensão do arquivo não garante que o conteúdo do arquivo seja apropriado. Por exemplo, sabe-se que o Crystal Reports geralmente produz documentos no formato RTF, mas lhes dá a extensão .doc.

Aspose.Words oferece a capacidade de obter informações sobre o tipo de arquivo para evitar uma exceção se você não tiver certeza de qual é o conteúdo real do arquivo.

## Detectar formato de arquivo sem exceção

Ao lidar com vários documentos em vários formatos de arquivo, pode ser necessário separar os arquivos que podem ser processados pelo Aspose.Words daqueles que não podem. Você também pode querer saber por que alguns dos documentos não podem ser processados.

Se você tentar carregar um arquivo em um objeto [Document](https://reference.aspose.com/words/net/aspose.words/document/) e o Aspose.Words não conseguir reconhecer o formato do arquivo ou o formato não for compatível, o Aspose.Words lançará uma exceção. Você pode capturar essas exceções e analisá-las, mas o Aspose.Words também fornece o método [DetectFileFormat](https://reference.aspose.com/words/net/aspose.words/fileformatutil/detectfileformat/) que nos permite determinar rapidamente o formato do arquivo sem carregar um documento com possíveis exceções. Este método retorna um objeto [FileFormatInfo](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/) que contém as informações detectadas sobre o tipo de arquivo.

{{% alert color="primary" %}}

DetectFileFormat apenas verifica o formato do arquivo, mas não o valida. Não há garantia de que o arquivo será aberto com sucesso, mesmo que **DetectFileFormat** retorne que é um dos formatos suportados. Isso ocorre porque o método **DetectFileFormat** lê apenas dados parciais do formato do arquivo, suficientes para verificar o formato do arquivo, mas não o suficiente para a validação completa.

{{% /alert %}}

## Verifique a compatibilidade do formato dos arquivos

Podemos verificar a compatibilidade de formato de todos os arquivos na pasta selecionada e classificá-los por formato nas subpastas correspondentes.

Como estamos lidando com o conteúdo de uma pasta, a primeira coisa que precisamos fazer é obter uma coleção de todos os arquivos desta pasta usando o método **GetFiles** da classe `Directory` (do namespace `System.IO`).

O exemplo de código a seguir mostra como obter uma lista de todos os arquivos na pasta:

{{< gist "aspose-words-gists" "3b6a8e49d800948f7d6ef7975f233fb3" "get-files-in-folder.cs" >}}

Quando todos os arquivos são coletados, o restante do trabalho é feito pelo método **DetectFileFormat**, que verifica o formato do arquivo.

O exemplo de código a seguir mostra como iterar na lista de arquivos coletada, verificar o formato de cada arquivo e mover cada arquivo para a pasta apropriada:

{{< gist "aspose-words-gists" "3b6a8e49d800948f7d6ef7975f233fb3" "check-format-compatibility.cs" >}}

Os arquivos são movidos para subpastas apropriadas usando o método `Move` da classe `File`, do mesmo namespace `System.IO`.

Os arquivos a seguir são usados no exemplo acima. O nome do arquivo está à esquerda e sua descrição à direita:

| Group de arquivos | Documento de entrada | Tipo |
|  :-  |  :-  |  :-  |
| Formatos de arquivo suportados | Arquivo de teste (Doc.doc) | Documento Microsoft Word 95/6.0 ou Microsoft Word 97 – 2003. |
| | Arquivo de teste (`Dot`).dot | Modelo Microsoft Word 95/6.0 ou Microsoft Word 97 – 2003. |
| | Arquivo de teste (Docx).docx | Documento Office Open XML WordprocessingML sem macros. |
| | Arquivo de teste (Docm).docm | Documento Office Open XML WordprocessingML com macros. |
| | Arquivo de teste (Dotx).dotx | Modelo Office Open XML WordprocessingML. |
| | Arquivo de teste (Dotm).dotm | Modelo Office Open XML WordprocessingML com macros. |
| | Arquivo de teste (XML).xml | Documento FlatOPC OOXML. |
| | Arquivo de teste (RTF).rtf | Documento em formato Rich Text. |
| | Arquivo de teste (WordML).xml | Documento Microsoft Word 2003 WordprocessingML. |
| | Arquivo de teste (HTML).html | Documento HTML. |
| | Arquivo de teste (MHTML).mhtml | Documento MHTML (arquivo da Web). |
| | Arquivo de teste (Odt).odt | Texto OpenDocument (OpenOffice Writer). |
| | Arquivo de teste (Ott).ott | Modelo de documento OpenDocument. |
| | Arquivo de teste (DocPreWord60).doc | Documento Microsoft Word 2.0. |
| Documentos criptografados | Arquivo de teste (Enc).doc | Documento criptografado Microsoft Word 95/6.0 ou Microsoft Word 97 – 2003. |
| | Arquivo de teste (Enc).docx | Documento criptografado do Office Open XML WordprocessingML. |
| Formatos de arquivo não suportados | Arquivo de teste (JPG).jpg | Arquivo de imagem JPEG. |

