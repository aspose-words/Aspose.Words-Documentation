---
title: Trabalhando com personagens de controle
second_title: Aspose.Words para Java
articleTitle: Trabalhando com personagens de controle
linktitle: Trabalhando com personagens de controle
description: "Introdução ao trabalho com personagens de controle em Aspose.Words para Java."
type: docs
weight: 400
url: /pt/java/working-with-control-characters/
---

Microsoft Word documentos podem conter vários caracteres que têm um significado especial. Normalmente eles são usados para fins de formatação e não são desenhados no modo normal. Você pode torná-los visíveis se você clicar no botão Mostrar/Hide Formatting Marks localizado na barra de ferramentas padrão.

Às vezes você pode precisar adicionar ou remover caracteres para / do texto. Por exemplo, quando se obtém texto programaticamente a partir do documento, Aspose.Words preserva a maioria dos caracteres de controle, então se você precisar trabalhar com este texto, você provavelmente deve remover ou substituir os caracteres.

O [ControlChar](https://reference.aspose.com/words/java/com.aspose.words/controlchar/) classe é um repositório para as constantes que representam personagens de controle frequentemente encontrados em documentos. Ele fornece versões de caracteres e caracteres das mesmas constantes. Por exemplo, string [LineBreak](https://reference.aspose.com/words/java/com.aspose.words/controlchar/#LINE-BREAK) e char [LineBreakChar](https://reference.aspose.com/words/java/com.aspose.words/controlchar/#LINE-BREAK_CHAR) tem o mesmo valor.

{{% alert color="primary" %}}

Use esta classe sempre que quiser lidar com personagens de controle.

{{% /alert %}}

O exemplo de código a seguir mostra como usar caracteres de controle:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-UseControlCharacters-UseControlCharacters.java" >}}
