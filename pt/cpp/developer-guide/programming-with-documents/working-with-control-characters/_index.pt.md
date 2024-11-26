---
title: Trabalhar Com Caracteres De Controlo
second_title: Aspose.Words para C++
articleTitle: Trabalhar Com Caracteres De Controlo
linktitle: Trabalhar Com Caracteres De Controlo
description: "Introdução ao trabalho com caracteres de controlo em Aspose.Words para C++."
type: docs
weight: 400
url: /pt/cpp/working-with-control-characters/
timestamp: 2024-01-27-14-07-04
---

Microsoft Word os documentos podem conter vários caracteres com um significado especial. Normalmente, são utilizados para fins de formatação e não são desenhados no modo normal. Você pode torná-los visíveis se clicar no botão Mostrar/Ocultar marcas de formatação localizado na barra de ferramentas padrão.

Às vezes, pode ser necessário adicionar ou remover caracteres de/para o texto. Por exemplo, ao obter texto programaticamente do documento, Aspose.Words preserva a maioria dos caracteres de controle, portanto, se você precisar trabalhar com esse texto, provavelmente deverá remover ou substituir os caracteres.

A classe [ControlChar](https://reference.aspose.com/words/cpp/aspose.words/controlchar/) é um repositório para as constantes que representam caracteres de controlo frequentemente encontrados em documentos. Ele fornece as versões char e string das mesmas constantes. Por exemplo, string [LineBreak](https://reference.aspose.com/words/cpp/aspose.words/controlchar/linebreak/) e char **ControlChar.LineBreakChar** têm o mesmo valor.

O exemplo de código a seguir mostra como usar caracteres de controle:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-ConvertUtil-UtilityClasses-UseControlCharacters.cpp" >}}
