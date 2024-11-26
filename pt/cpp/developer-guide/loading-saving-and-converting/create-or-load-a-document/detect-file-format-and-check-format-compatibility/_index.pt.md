---
title: Detectar o formato do ficheiro e verificar a compatibilidade do formato
second_title: Aspose.Words para C++
articleTitle: Detectar o formato do ficheiro e verificar a compatibilidade do formato
linktitle: Detectar o formato do ficheiro e verificar a compatibilidade do formato
description: "Determine o formato do arquivo em C++ Se não tiver certeza de qual é o conteúdo real do arquivo ou para verificar a compatibilidade do formato."
type: docs
weight: 20
url: /pt/cpp/detect-file-format-and-check-format-compatibility/
timestamp: 2024-10-21-11-17-44
---

Às vezes, é necessário determinar o formato de um documento antes de abrir, porque a extensão do arquivo não garante que o conteúdo do arquivo seja apropriado. Por exemplo, sabe-se que o Crystal Reports apresenta frequentemente documentos no formato RTF, mas fornece-lhes o.extensão doc.

Aspose.Words permite obter informações sobre o tipo de ficheiro, a fim de evitar uma excepção se não tiver a certeza do conteúdo real do ficheiro.

## Detectar o formato do Ficheiro sem excepção

Quando se trata de vários documentos em vários formatos de ficheiro, pode ser necessário separar os ficheiros que podem ser processados por Aspose.Words daqueles que não podem. Talvez queira também saber por que razão alguns dos documentos não podem ser tratados.

Se você tentar carregar um arquivo em um objeto [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) e Aspose.Words não puder reconhecer o formato do arquivo ou o formato não for suportado, Aspose.Words lançará uma exceção. Você pode capturar essas exceções e analisá-las, mas Aspose.Words também fornece o método [DetectFileFormat](https://reference.aspose.com/words/cpp/aspose.words/fileformatutil/detectfileformat/) que nos permite determinar rapidamente o formato do arquivo sem carregar um documento com possíveis exceções. Este método retorna um objeto [FileFormatInfo](https://reference.aspose.com/words/cpp/aspose.words/fileformatinfo/) que contém as informações detectadas sobre o tipo de arquivo.

{{% alert color="primary" %}}

DetectFileFormat apenas verifica o formato do ficheiro, mas não o valida. Não há garantia de que o arquivo será aberto com sucesso, mesmo que **DetectFileFormat** retorne que é um dos formatos suportados. Isso ocorre porque o método **DetectFileFormat** lê apenas dados parciais do formato do arquivo, suficientes para verificar o formato do arquivo, mas não suficientes para a validação completa.

{{% /alert %}}

## Verificar A Compatibilidade Do Formato Dos Ficheiros

Podemos verificar a compatibilidade de formatos de todos os ficheiros da pasta seleccionada e classificá-los por formato nas subpastas correspondentes.

Como estamos lidando com conteúdo em uma pasta, a primeira coisa que precisamos fazer é obter uma coleção de todos os arquivos nesta pasta usando o método **GetFiles** da classe `Directory` (do namespace `System.IO`).

O exemplo de código a seguir mostra como obter uma lista de todos os arquivos na pasta:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-CheckFormat-GetListOfFilesInFolder.cpp" >}}

Quando todos os arquivos são coletados, o restante do trabalho é feito pelo método **DetectFileFormat**, que verifica o formato do arquivo.

O exemplo de código a seguir mostra como iterar sobre a lista coletada de arquivos, verificar o formato de cada arquivo e mover cada arquivo para a pasta apropriada:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-CheckFormat-CheckFormatCompatibility.cpp" >}}

Os arquivos são movidos para subpastas apropriadas usando o método `Move` da classe `File`, do mesmo namespace `System.IO`.

Os seguintes ficheiros são utilizados no exemplo acima. O nome do ficheiro está à esquerda e a sua descrição está à direita:

| Grupo de Ficheiros | Documento De Entrada | Tipo |
| :- | :- | :- |
| Formatos de ficheiro suportados | Test File (DOC).doc | Microsoft Word 95/6.0 ou Microsoft Word 97 – 2003 documento. |
|  | Test File (DOT).dot | Modelo Microsoft Word 95/6.0 ou Microsoft Word 97 – 2003. |
|  | Test File (DOCX).docx | Office abrir XML documento WordprocessingML sem macros. |
|  | Test File (DOCM).docm | Office abrir XML documento WordprocessingML com macros. |
|  | Test File (DOTX).dotx | Escritório Aberto XML WordprocessingML modelo. |
|  | Test File (DOTM).dotm | Office abrir XML Modelo WordprocessingML com macros. |
|  | Test File (XML).xml | FlatOPC OOXML Documento. |
|  | Test File (RTF).rtf | Documento em formato Rich Text. |
|  | Test File (WordML).xml | Microsoft Word documento WordprocessingML de 2003. |
|  | Test File (HTML).html | HTML documento. |
|  | Test File (MHTML).mhtml | MHTML (arquivo Web) documento. |
|  | Test File (ODT).odt | OpenDocument Texto (OpenOffice Escritor). |
|  | Test File (OTT).ott | OpenDocument Modelo De Documento. |
|  | Ficheiro De Ensaio (DocPreWord60).doc | Microsoft Word 2.0 documento. |
| Documentos encriptados | Test File (Enc).doc | Documento encriptado Microsoft Word 95 / 6.0 ou Microsoft Word 97 – 2003. |
|  | Test File (Enc).docx | Escritório encriptado abrir XML documento WordprocessingML. |
| Formatos de ficheiro não suportados | Test File (JPG).jpg | JPEG ficheiro de imagem. |

