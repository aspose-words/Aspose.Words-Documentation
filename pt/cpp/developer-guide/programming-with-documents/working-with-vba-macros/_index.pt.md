---
title: Trabalhando com VBA Macros em C++
second_title: Aspose.Words para C++
articleTitle: Trabalhar com VBA Macros
linktitle: Trabalhar com VBA Macros
description: "Trabalhando com projetos de documentos VBA usando C++."
type: docs
weight: 410
url: /pt/cpp/working-with-vba-macros/
---

Visual Basic for Applications (VBA) for Microsoft Word é uma linguagem de programação simples, mas poderosa, que pode ser usada para estender a funcionalidade. Aspose.Words API fornece três classes para obter acesso ao código-fonte do projeto VBA:

- A classe [VBAProject](https://reference.aspose.com/words/cpp/aspose.words.vba/vbaproject/) fornece acesso às informações do projeto VBA
- A classe [VBAModulesCollection](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodulecollection/) retorna a coleção de VBA módulos do projeto
- A classe [VbaModule](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/) fornece acesso ao módulo do projeto VBA

## Criar um projecto VBA

Aspose.Words API fornece `Document.VbaProject` propriedade para obter ou definir VbaProject no documento.

O exemplo de código a seguir demonstra como criar um projeto VBA e um módulo VBA juntamente com propriedades básicas, por exemplo, Nome e tipo:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-CreateVbaProject.cpp" >}}

## Ler Macros

Aspose.Words também fornece aos usuários a capacidade de ler VBA macros.

O exemplo de código a seguir mostra como ler VBA Macros do documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-ReadVbaMacros.cpp" >}}

## Escrever ou modificar Macros

Usando Aspose.Words, os usuários podem modificar VBA macros.

O exemplo de código a seguir mostra como modificar as Macros VBA usando a propriedade [SourceCode](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/get_sourcecode/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-ModifyVbaMacros.cpp" >}}

## Clone VBA Projecto

Com Aspose.Words também é possível clonar VBA projetos.

O exemplo de código a seguir mostra como clonar o projeto VBA usando a propriedade [Clone](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/clone/) que cria uma cópia do projeto existente:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaProject.cpp" >}}

## Módulo Clone VBA

Você também pode clonar VBA módulos, se necessário.

O exemplo de código a seguir mostra como clonar o módulo VBA usando a propriedade [Clone](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/clone/) que cria uma cópia do projeto existente:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaModule.cpp" >}}
