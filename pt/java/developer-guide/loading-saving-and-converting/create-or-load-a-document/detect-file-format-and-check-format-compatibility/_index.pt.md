---
title: Detectar O Formato Do Ficheiro
second_title: Aspose.Words para Java
articleTitle: Detectar o formato do ficheiro e verificar a compatibilidade do formato
linktitle: Detectar o formato do ficheiro e verificar a compatibilidade do formato
description: "Obter informações sobre o formato do documento antes de abri-lo para evitar uma exceção se você não tiver certeza de qual o conteúdo real do arquivo está usando Java."
type: docs
weight: 20
url: /pt/java/detect-file-format-and-check-format-compatibility/
timestamp: 2024-10-21-11-17-44
---

Às vezes, é necessário determinar o formato de um documento antes de abrir, porque a extensão do arquivo não garante que o conteúdo do arquivo seja apropriado. Por exemplo, sabe-se que o Crystal Reports apresenta frequentemente documentos no formato RTF, mas fornece-lhes o.extensão doc.

Aspose.Words permite obter informações sobre o tipo de ficheiro, a fim de evitar uma excepção se não tiver a certeza do conteúdo real do ficheiro.

## Detectar o formato do Ficheiro sem excepção

Quando se trata de vários documentos em vários formatos de ficheiro, pode ser necessário separar os ficheiros que podem ser processados por Aspose.Words daqueles que não podem. Talvez queira também saber por que razão alguns dos documentos não podem ser tratados.

Se você tentar carregar um arquivo em um objeto [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) e Aspose.Words não puder reconhecer o formato do arquivo ou o formato não for suportado, Aspose.Words lançará uma exceção. Você pode capturar essas exceções e analisá-las, mas Aspose.Words também fornece o método [DetectFileFormat](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/#detectFileFormat-java.lang.String) que nos permite determinar rapidamente o formato do arquivo sem carregar um documento com possíveis exceções. Este método retorna um objeto [FileFormatInfo](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/) que contém as informações detectadas sobre o tipo de arquivo.

{{% alert color="primary" %}}

DetectFileFormat apenas verifica o formato do ficheiro, mas não o valida. Não há garantia de que o arquivo será aberto com sucesso, mesmo que **DetectFileFormat** retorne que é um dos formatos suportados. Isso ocorre porque o método **DetectFileFormat** lê apenas dados parciais do formato do arquivo, suficientes para verificar o formato do arquivo, mas não suficientes para a validação completa.

{{% /alert %}}

## Verificar A Compatibilidade Do Formato Dos Ficheiros

Podemos verificar a compatibilidade de formatos de todos os ficheiros da pasta seleccionada e classificá-los por formato nas subpastas correspondentes.

Como estamos lidando com conteúdo em uma pasta, a primeira coisa que precisamos fazer é obter uma coleção de todos os arquivos nesta pasta usando o método **GetFiles** da classe `Directory` (do namespace `System.IO`).

O exemplo de código a seguir mostra como obter uma lista de todos os arquivos na pasta:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CheckFormatCompatibility-GetListOfFilesInFolder.java" >}}

Quando todos os arquivos são coletados, o restante do trabalho é feito pelo método **DetectFileFormat**, que verifica o formato do arquivo.

O exemplo de código a seguir mostra como iterar sobre a lista coletada de arquivos, verificar o formato de cada arquivo e mover cada arquivo para a pasta apropriada:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CheckFormatCompatibility-CheckFormatCompatibility.java" >}}

Os arquivos são movidos para subpastas apropriadas usando o método `Move` da classe `File`, do mesmo namespace `System.IO`.

Os seguintes ficheiros são utilizados no exemplo acima. O nome do ficheiro está à esquerda e a sua descrição está à direita:

| Grupo de Ficheiros | Documento De Entrada | Tipo |
| :- | :- | :- |
| Formatos de ficheiro suportados | Test File (Doc).doc | Microsoft Word 95/6.0 ou Microsoft Word 97 – 2003 documento. |
|  | Test File (Dot).dot | Modelo Microsoft Word 95/6.0 ou Microsoft Word 97 – 2003. |
|  | Test File (Docx).docx | Office abrir XML WordprocessingML documento sem macros. |
|  | Test File (Docm).docm | Office abrir XML WordprocessingML documento com macros. |
|  | Test File (Dotx).dotx | Escritório aberto XML WordprocessingML modelo. |
|  | Test File (Dotm).dotm | Office abrir XML WordprocessingML modelo com macros. |
|  | Test File (XML).xml | FlatOPC OOXML Documento. |
|  | Test File (RTF).rtf | Documento em formato Rich Text. |
|  | Test File (WordML).xml | Microsoft Word documento de 2003 WordprocessingML. |
|  | Test File (HTML).html | HTML documento. |
|  | Test File (MHTML).mhtml | MHTML (arquivo Web) documento. |
|  | Test File (Odt).odt | OpenDocument Texto (OpenOffice Escritor). |
|  | Test File (Ott).ott | OpenDocument Modelo De Documento. |
|  | Test File (DocPreWord60).doc | Microsoft Word 2.0 documento. |
| Documentos encriptados | Test File (Enc).doc | Documento encriptado Microsoft Word 95 / 6.0 ou Microsoft Word 97 – 2003. |
|  | Test File (Enc).docx | Escritório encriptado Abrir XML WordprocessingML documento. |
| Formatos de ficheiro não suportados | Test File (JPG).jpg | JPEG ficheiro de imagem. |

