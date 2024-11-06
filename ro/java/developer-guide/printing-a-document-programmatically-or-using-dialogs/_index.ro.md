---
title: Imprimarea unui Document
second_title: Aspose.Words pentru Java
articleTitle: Imprimarea unui Document programatic sau folosind Dialoguri
linktitle: Imprimarea unui Document programatic sau folosind Dialoguri
description: "Imprimați un document folosind Java prin Setări, previzualizare imprimare și dialoguri de progres imprimare."
type: docs
weight: 55
url: /ro/java/print-a-document-programmatically-or-using-dialogs/
---

Acest articol descrie modul de imprimare a unui document de procesare a textului folosind Aspose.Words API. De asemenea, demonstrează metodele de imprimare a unui document cu setări, previzualizare imprimare și dialoguri de progres imprimare.

## Imprimarea unui Document cu setări și dialoguri de previzualizare a imprimării

Când lucrați cu documente, este adesea necesar să le imprimați pe o imprimantă selectată. Este util să utilizați un dialog de previzualizare a imprimării pentru a inspecta vizual modul în care va apărea documentul tipărit și pentru a alege opțiunile de imprimare relevante.

Aspose.Words nu are dialoguri sau formulare încorporate, dar implementează clasa [AsposeWordsPrintDocument](https://reference.aspose.com/words/java/com.aspose.words/asposewordsprintdocument/) suprascrie ambele java.awt.imprimă.Imprimabil și java.awt.imprimă.Pageable.

Următorul exemplu arată cum să utilizați aceste clase pentru a imprima un document din Aspose.Words prin intermediul dialogurilor Print preview și Settings:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-DocumentPreviewAndPrint-PrintDialog.java" >}}

{{% alert color="primary" %}} You can download an example of using the **PrintPreviewDialog** class from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Rendering_and_printing/PrintDocuments.java). {{% /alert %}}

## Imprimarea mai multor pagini pe o singură coală

Aspose.Words implementează clasa **MultipagePrintDocument**, pentru a regla fin operația de imprimare pentru a implementa logica personalizată, definind modul în care documentul va apărea pe pagina tipărită. Clasa **MultipagePrintDocument** oferă posibilitatea de a imprima mai multe pagini pe o coală de hârtie.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-MultiplePagesOnSheet-MultiplePagesOnSheet.java" >}}

Puteți descărca un exemplu de utilizare a clasei **MultipagePrintDocument** din [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/c693ec7a8957051c206edc69612094a4169f6def/Examples/DocsExamples/Java/src/main/java/DocsExamples/Rendering_and_printing/PrintDocuments.java#L46).

Rezultatul acestui exemplu de cod este prezentat mai jos:

![print_several_pages_on_one_sheet_aspose_words_java](print-several-pages-on-one-sheet.png)/
