---
title: Trabalhando com VBA Macros em Java
second_title: Aspose.Words para Java
articleTitle: Trabalhando com VBA Macros
linktitle: Trabalhando com VBA Macros
description: "Trabalhando com projetos de documento VBA usando Java."
type: docs
weight: 410
url: /pt/java/working-with-vba-macros/
timestamp: 2024-01-27-14-07-04
---

Visual Basic para aplicações (VBA) para Microsoft Word é uma linguagem de programação simples, mas poderosa que pode ser usada para estender a funcionalidade. Aspose.Words API fornece três classes para obter acesso ao código fonte do projeto VBA:

- O [VBAProject](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/) classe fornece acesso às informações do projeto VBA
- O [VBAModulesCollection](https://reference.aspose.com/words/java/com.aspose.words/vbamodulecollection/) classe retorna a coleção de módulos de projeto VBA
- O [VbaModule](https://reference.aspose.com/words/java/com.aspose.words/vbamodule/) classe fornece acesso ao módulo de projeto VBA

## Criar um Projeto VBA

Aspose.Words API fornece o [VbaProject](https://reference.aspose.com/words/java/com.aspose.words/document/#getVbaProject) propriedade para obter ou definir VbaProject no documento.

O exemplo de código a seguir demonstra como criar um projeto VBA e Módulo VBA junto com propriedades básicas, por exemplo. Nome e tipo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CreateVbaProject.java" >}}

## Leia Macros

Aspose.Words também fornece aos usuários a capacidade de ler macros VBA.

O exemplo de código a seguir mostra como ler o VBA Macros do documento:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-ReadVbaMacros.java" >}}

## Modificar Macros

Usando Aspose.Words, os usuários podem modificar macros VBA.

O exemplo de código a seguir mostra como modificar VBA Macros usando o [SourceCode](https://reference.aspose.com/words/java/com.aspose.words/vbamodule/#getSourceCode) propriedade:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-ModifyVbaMacros.java" >}}

## Clone VBA Projeto

Com Aspose.Words também é possível clonar projetos VBA.

O exemplo de código a seguir demonstra como clonar o Projeto VBA usando o [Clone](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#deepClone) propriedade que cria uma cópia do projeto existente:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CloneVbaProject.java" >}}

## Clone VBA Módulo

Você também pode clonar módulos VBA se necessário.

O exemplo de código a seguir demonstra como clonar o Módulo VBA usando o [Clone](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#deepClone) propriedade que cria uma cópia do projeto existente

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CloneVbaModule.java" >}}
