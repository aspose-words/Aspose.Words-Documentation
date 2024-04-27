---
title: Detectar o formato de arquivo
second_title: Aspose.Words para Java
articleTitle: Detectar Formato de Arquivo e Verificar Compatibilidade Formato
linktitle: Detectar Formato de Arquivo e Verificar Compatibilidade Formato
description: "Obter informações sobre o formato do documento antes de abri-lo para evitar uma exceção se você não tem certeza do que o conteúdo real do arquivo está usando Java."
type: docs
weight: 20
url: /pt/java/detect-file-format-and-check-format-compatibility/
---

Às vezes é necessário determinar o formato de um documento antes de abrir porque a extensão do arquivo não garante que o conteúdo do arquivo seja apropriado. Por exemplo, sabe-se que Crystal Reports muitas vezes produz documentos em formato RTF, mas dá-lhes a extensão .doc.

Aspose.Words fornece uma capacidade de obter informações sobre o tipo de arquivo, a fim de evitar uma exceção se você não tem certeza de qual é o conteúdo real do arquivo.

## Detectar o formato de arquivo sem uma exceção

Quando você está lidando com vários documentos em vários formatos de arquivo, você pode precisar separar esses arquivos que podem ser processados por Aspose.Words daqueles que não podem. Você também pode querer saber por que alguns dos documentos não podem ser processados.

Se você tentar carregar um arquivo em um [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) objeto e Aspose.Words não pode reconhecer o formato de arquivo ou o formato não é suportado, Aspose.Words vai lançar uma exceção. Você pode pegar essas exceções e analisá-las, mas Aspose.Words também fornece o [DetectFileFormat](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/#detectFileFormat-java.lang.String) método que nos permite determinar rapidamente o formato de arquivo sem carregar um documento com exceções possíveis. Este método retorna um [FileFormatInfo](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/) objeto que contém as informações detectadas sobre o tipo de arquivo.

{{% alert color="primary" %}}

Dispositivo de detecção Formato só verifica o formato de arquivo, mas não valida o formato de arquivo. Não há garantia de que o arquivo será aberto com sucesso, mesmo que **DetectFileFormat** retorna que é um dos formatos suportados. Isto é por causa de **DetectFileFormat** método lê apenas dados de formato de arquivo parcial, suficiente para verificar o formato de arquivo, mas não o suficiente para validação completa.

{{% /alert %}}

## Verificar arquivos Formatar compatibilidade

Podemos verificar a compatibilidade de formato de todos os arquivos na pasta selecionada e classificá-los por formato em subpastas correspondentes.

Como estamos lidando com conteúdo em uma pasta, a primeira coisa que precisamos fazer é obter uma coleção de todos os arquivos nesta pasta usando o **GetFiles** método do `Directory` classe (a partir do `System.IO` namespace).

O exemplo de código a seguir mostra como obter uma lista de todos os arquivos na pasta:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CheckFormatCompatibility-GetListOfFilesInFolder.java" >}}

Quando todos os arquivos são coletados, o resto do trabalho é feito pelo **DetectFileFormat** método, que verifica o formato de arquivo.

O exemplo de código a seguir mostra como iterar sobre a lista coletada de arquivos, verificar o formato de cada arquivo e mover cada arquivo para a pasta apropriada:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CheckFormatCompatibility-CheckFormatCompatibility.java" >}}

Os arquivos são movidos para subpastas apropriadas usando o `Move` método do `File` classe, do mesmo `System.IO` namespace.

Os seguintes arquivos são usados no exemplo acima. O nome do arquivo está à esquerda e sua descrição está à direita:

| Group de Arquivos | Documento de entrada | Tipo |
|  :-  |  :-  |  :-  |
| Formatos de arquivo suportados | Test File (Doc).doc | Microsoft Word 95/6.0 ou Microsoft Word 97 - 2003 documento. |
| | Test File (Dot).dot | Microsoft Word 95/6.0 ou Microsoft Word 97 – 2003 modelo. |
| | Test File (Docx).docx | Office Open XML Wordprocessing ML documento sem macros. |
| | Test File (Docm).docm | Office Open XML Wordprocessing Documento ML com macros. |
| | Test File (Dotx).dotx | Office Open XML Wordprocessing Modelo ML. |
| | Test File (Dotm).dotm | Office Open XML Wordprocessing Modelo ML com macros. |
| | Test File (XML).xml | FlatOPC OOXML Document. |
| | Test File (RTF).rtf | Rich Text Format documento. |
| | Test File (WordML).xml | Microsoft Word Processamento do Word 2003 Documento ML. |
| | Test File (HTML).html | Documento HTML. |
| | Test File (MHTML).mhtml | MHTML (arquivo Web) documento. |
| | Test File (Odt).odt | OpenDocument Text (OpenOffice Writer). |
| | Test File (Ott).ott | Modelo de documento OpenDocument. |
| | Test File (DocPreWord60).doc | Microsoft Word Documento 2.0. |
| Documentos criptografados | Test File (Enc).doc | Criptografado Microsoft Word 95/6.0 ou Microsoft Word 97 - 2003 documento. |
| | Test File (Enc).docx | Encrypted Office Open XML Wordprocessing Documento ML. |
| Formatos de arquivo não suportados | Test File (JPG). O que foi? | Arquivo de imagem JPEG. |

