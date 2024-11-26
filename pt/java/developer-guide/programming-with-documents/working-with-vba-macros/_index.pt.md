---
title: Trabalhar com VBA Macros em Java
second_title: Aspose.Words para Java
articleTitle: Trabalhar com VBA Macros
linktitle: Trabalhar com VBA Macros
description: "Trabalhando com documento VBA projetos usando Java."
type: docs
weight: 410
url: /pt/java/working-with-vba-macros/
timestamp: 2024-01-27-14-07-04
---

Visual Basic for Applications (VBA) for Microsoft Word é uma linguagem de programação simples, mas poderosa, que pode ser usada para estender a funcionalidade. Aspose.Words API fornece três classes para obter acesso ao código-fonte do projeto VBA:

- A classe [VBAProject](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/) fornece acesso às informações do projeto VBA
- A classe [VBAModulesCollection](https://reference.aspose.com/words/java/com.aspose.words/vbamodulecollection/) retorna a coleção de VBA módulos do projeto
- A classe [VbaModule](https://reference.aspose.com/words/java/com.aspose.words/vbamodule/) fornece acesso ao módulo do projeto VBA

## Criar um projecto VBA

Aspose.Words API fornece a propriedade [VbaProject](https://reference.aspose.com/words/java/com.aspose.words/document/#getVbaProject) para obter ou definir VbaProject no documento.

O exemplo de código a seguir demonstra como criar um projeto VBA e um módulo VBA juntamente com propriedades básicas, por exemplo, Nome e tipo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CreateVbaProject.java" >}}

## Ler Macros

Aspose.Words também fornece aos usuários a capacidade de ler VBA macros.

O exemplo de código a seguir mostra como ler VBA Macros do documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-ReadVbaMacros.java" >}}

## Modificar Macros

Usando Aspose.Words, os usuários podem modificar VBA macros.

O exemplo de código a seguir mostra como modificar as Macros VBA usando a propriedade [SourceCode](https://reference.aspose.com/words/java/com.aspose.words/vbamodule/#getSourceCode):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-ModifyVbaMacros.java" >}}

## Clone VBA Projecto

Com Aspose.Words também é possível clonar VBA projetos.

O exemplo de código a seguir demonstra como clonar o projeto VBA usando a propriedade [Clone](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#deepClone) que cria uma cópia do projeto existente:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CloneVbaProject.java" >}}

## Módulo Clone VBA

Você também pode clonar VBA módulos, se necessário.

O exemplo de código a seguir demonstra como clonar o módulo VBA usando a propriedade [Clone](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#deepClone) que cria uma cópia do projeto existente.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CloneVbaModule.java" >}}
