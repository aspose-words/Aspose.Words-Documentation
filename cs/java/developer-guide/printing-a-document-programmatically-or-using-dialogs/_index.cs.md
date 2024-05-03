---
title: Tisk dokumentu
second_title: Aspose.Words místo Java
articleTitle: Tisk dokumentu Programově nebo pomocí dialogů
linktitle: Tisk dokumentu Programově nebo pomocí dialogů
description: "Vytisknout dokument pomocí Java přes dialogy Nastavení, náhledu tisku a postupu tisku."
type: docs
weight: 55
url: /cs/java/print-a-document-programmatically-or-using-dialogs/
---

Tento článek popisuje, jak vytisknout text zpracování dokumentu pomocí Aspose.Words API. Ukazuje také metody tisku dokumentu pomocí dialogů Nastavení, náhledu tisku a postupu tisku.

## Tisk dokumentu s nastavením a náhledem tisku

Při práci s dokumenty je často nutné tisknout do vybrané tiskárny. Je užitečné využít dialogové okno náhledu tisku a vizuálně zkontrolovat, jak se objeví tištěný dokument, a zvolit příslušné možnosti tisku.

The Aspose.Words nemá vestavěná dialogová okna nebo formuláře, ale provádí [AsposeWordsPrintDocument](https://reference.aspose.com/words/java/com.aspose.words/asposewordsprintdocument/) třída přepíše oba java.awt.print. Tisknutelná a java.awt.print. Pageable.

Následující příklad ukazuje, jak použít tyto třídy k tisku dokumentu z Aspose.Words přes dialogy náhledu a nastavení:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-DocumentPreviewAndPrint-PrintDialog.java" >}}

{{% alert color="primary" %}} You can download an example of using the **PrintPreviewDialog** class from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Rendering_and_printing/PrintDocuments.java). {{% /alert %}}

## Tisk více stránek na jednom listu

Aspose.Words provádí **MultipagePrintDocument** třída, doladit tiskový provoz k provedení vlastní logiky definováním způsobu, jakým se dokument objeví na tištěné stránce. The **MultipagePrintDocument** třída poskytuje možnost tisknout několik stránek na jeden list papíru.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-MultiplePagesOnSheet-MultiplePagesOnSheet.java" >}}

Můžete si stáhnout příklad pomocí **MultipagePrintDocument** třída [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/c693ec7a8957051c206edc69612094a4169f6def/Examples/DocsExamples/Java/src/main/java/DocsExamples/Rendering_and_printing/PrintDocuments.java#L46)

Výsledek tohoto příkladu kódu je uveden níže:

![print_several_pages_on_one_sheet_aspose_words_java](/words/java/print-a-document-programmatically-or-using-dialogs/print-several-pages-on-one-sheet.png)/
