---
title: Praca z znakami kontrolnymi
second_title: Aspose.Words zamiast Java
articleTitle: Praca z znakami kontrolnymi
linktitle: Praca z znakami kontrolnymi
description: "Wprowadzenie do pracy z znaków kontrolnych w Aspose.Words zamiast Java."
type: docs
weight: 400
url: /pl/java/working-with-control-characters/
---

Microsoft Word dokumenty mogą zawierać różne znaki, które mają szczególne znaczenie. Zwykle są one używane do formatowania i nie są rysowane w trybie normalnym. Po kliknięciu przycisku Pokaż / Ukryj znaki formatowania, które znajduje się na pasku narzędzi standardowych, można je wyświetlić.

Czasami może być konieczne dodanie lub usunięcie znaków do / z tekstu. Na przykład, przy uzyskaniu tekstu programowo z dokumentu, Aspose.Words zachowuje większość znaków sterowania, więc jeśli musisz pracować z tym tekstem, należy prawdopodobnie usunąć lub zastąpić znaki.

W [ControlChar](https://reference.aspose.com/words/java/com.aspose.words/controlchar/) klasa jest repozytorium dla stałych, które reprezentują znaki kontrolne często napotkane w dokumentach. Zapewnia zarówno wersje znaków jak i strun tych samych stałych. Na przykład, ciąg znaków [LineBreak](https://reference.aspose.com/words/java/com.aspose.words/controlchar/#LINE-BREAK) i czara [LineBreakChar](https://reference.aspose.com/words/java/com.aspose.words/controlchar/#LINE-BREAK_CHAR) ma taką samą wartość.

{{% alert color="primary" %}}

Korzystaj z tej klasy, kiedy chcesz zajmować się znakami kontrolnymi.

{{% /alert %}}

Poniższy przykład kodu pokazuje jak używać znaków sterujących:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-UseControlCharacters-UseControlCharacters.java" >}}
