---
title: Trabalhar Com Caracteres De Controlo
second_title: Aspose.Words para Java
articleTitle: Trabalhar Com Caracteres De Controlo
linktitle: Trabalhar Com Caracteres De Controlo
description: "Introdução ao trabalho com caracteres de controlo em Aspose.Words para Java."
type: docs
weight: 400
url: /pt/java/working-with-control-characters/
timestamp: 2024-01-27-14-07-04
---

Microsoft Word os documentos podem conter vários caracteres com um significado especial. Normalmente, são utilizados para fins de formatação e não são desenhados no modo normal. Você pode torná-los visíveis se clicar no botão Mostrar/Ocultar marcas de formatação localizado na barra de ferramentas padrão.

Às vezes, pode ser necessário adicionar ou remover caracteres de/para o texto. Por exemplo, ao obter texto programaticamente do documento, Aspose.Words preserva a maioria dos caracteres de controle, portanto, se você precisar trabalhar com esse texto, provavelmente deverá remover ou substituir os caracteres.

A classe [ControlChar](https://reference.aspose.com/words/java/com.aspose.words/controlchar/) é um repositório para as constantes que representam caracteres de controlo frequentemente encontrados em documentos. Ele fornece as versões char e string das mesmas constantes. Por exemplo, string [LineBreak](https://reference.aspose.com/words/java/com.aspose.words/controlchar/#LINE-BREAK) e char [LineBreakChar](https://reference.aspose.com/words/java/com.aspose.words/controlchar/#LINE-BREAK_CHAR) têm o mesmo valor.

{{% alert color="primary" %}}

Use esta classe sempre que quiser lidar com caracteres de controle.

{{% /alert %}}

O exemplo de código a seguir mostra como usar caracteres de controle:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-UseControlCharacters-UseControlCharacters.java" >}}
