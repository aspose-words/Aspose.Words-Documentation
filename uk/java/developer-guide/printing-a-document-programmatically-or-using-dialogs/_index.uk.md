---
title: Друк документів
second_title: Aspose.Words для Java
articleTitle: Друк документів Програматично або за допомогою ділогів
linktitle: Друк документів Програматично або за допомогою ділогів
description: "Друк документа за допомогою Java через налаштування, друкувати перегляд та друкувати діалоги прогресу."
type: docs
weight: 55
url: /uk/java/print-a-document-programmatically-or-using-dialogs/
---

Ця стаття описує, як друкувати документ обробки слів за допомогою Aspose.Words APIй Також продемонстровано методи друку документа з налаштуваннями, переглядом та діалогами про прогрес друку.

## Друк документів з налаштуваннями та друком ділогів Перегляду

При роботі з документами часто потрібно друкувати їх на обраний принтер. Ви можете використовувати діалогове вікно попереднього перегляду друку, щоб візуально зрозуміти, як буде виглядати друкований документ і вибрати відповідні параметри друку.

Про нас Aspose.Words не має вбудованих діалогів або форм, але реалізує [AsposeWordsPrintDocument](https://reference.aspose.com/words/java/com.aspose.words/asposewordsprintdocument/) клас перенаречений як java.awt.print. Друковані та java.awt.print. Приват24

Наступний приклад показує, як використовувати ці класи для друку документа з Aspose.Words через вікно попереднього перегляду та налаштування друку:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-DocumentPreviewAndPrint-PrintDialog.java" >}}

{{% alert color="primary" %}} You can download an example of using the **PrintPreviewDialog** class from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Rendering_and_printing/PrintDocuments.java). {{% /alert %}}

## Друк кількох сторінок на одному аркуші

Aspose.Words впроваджує **MultipagePrintDocument** клас, щоб тонко-нав'язувати операцію друку для реалізації вашої користувальницької логіки, визначивши спосіб, документ буде з'являтися на друкованій сторінці. Про нас **MultipagePrintDocument** клас надає можливість друкувати кілька сторінок на одному аркуші паперу.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-MultiplePagesOnSheet-MultiplePagesOnSheet.java" >}}

Ви можете завантажити приклад використання **MultipagePrintDocument** клас від [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/c693ec7a8957051c206edc69612094a4169f6def/Examples/DocsExamples/Java/src/main/java/DocsExamples/Rendering_and_printing/PrintDocuments.java#L46)й

Приклад даного коду показано нижче:

![print_several_pages_on_one_sheet_aspose_words_java](/words/java/print-a-document-programmatically-or-using-dialogs/print-several-pages-on-one-sheet.png)/
