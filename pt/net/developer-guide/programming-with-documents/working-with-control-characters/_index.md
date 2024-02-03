---
title: Trabalhando com personagens de controle
second_title: Aspose.Words para .NET
articleTitle: Trabalhando com personagens de controle
linktitle: Trabalhando com personagens de controle
description: "Introdução ao trabalho com caracteres de controle em Aspose.Words para .NET."
type: docs
weight: 400
url: /pt/net/working-with-control-characters/
---

Os documentos Microsoft Word podem conter vários caracteres com um significado especial. Normalmente eles são usados para fins de formatação e não são desenhados no modo normal. Você pode torná-los visíveis clicando no botão Mostrar/Ocultar marcas de formatação localizado na barra de ferramentas Padrão.

Às vezes você pode precisar adicionar ou remover caracteres do texto. Por exemplo, ao obter texto programaticamente do documento, o Aspose.Words preserva a maioria dos caracteres de controle, portanto, se você precisar trabalhar com esse texto, provavelmente deverá remover ou substituir os caracteres.

A classe [ControlChar](https://reference.aspose.com/words/net/aspose.words/controlchar/) é um repositório para constantes que representam caracteres de controle frequentemente encontrados em documentos. Ele fornece versões char e string das mesmas constantes. Por exemplo, string [LineBreak](https://reference.aspose.com/words/net/aspose.words/controlchar/linebreak/) e char [LineBreakChar](https://reference.aspose.com/words/net/aspose.words/controlchar/linebreakchar) têm o mesmo valor.

O exemplo de código a seguir mostra como usar caracteres de controle:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-ConvertUtil-UtilityClasses-UseControlCharacters.cs" >}}/words/net/working-with-content-control-sdt/)
