---
title: Bir Belge Yazdırma
second_title: Aspose.Words için ` Java
articleTitle: Bir Belgeyi Programatik Olarak Yazdırma veya Diyaloglar Kullanarak
linktitle: Bir Belgeyi Programatik Olarak Yazdırma veya Diyaloglar Kullanarak
description: "Ayarlar, Yazdırma Önizleme ve yazdırma ilerleme iletişim kutularını kullanarak bir belgeyi Java'e yazdırın."
type: docs
weight: 55
url: /tr/java/print-a-document-programmatically-or-using-dialogs/
timestamp: 2024-01-27-14-07-04
---

Bu makale bir kelime işlemci belgesi yazdırma Aspose.Words API'den nasıl yazdırılacağını anlatır. Ayrıca ayarlar, yazdırma önizlemesi ve yazdırma ilerleme iletişim kutularını kullanarak bir belgeyi yazdırma yöntemlerini gösterir.

## Ayarlarla ve Yazdırma Önizleme Diyalogları ile Bir Belgeyi Yazdırma

Bir belge üzerinde çalışırken, bunları seçili yazıcıya yazdırabilmek önemlidir. Yazdırma önizleme iletişim kutusunu kullanarak yazdırılmış belgeyi nasıl görüneceğini görsel olarak incelemek ve ilgili yazdırma seçeneklerini seçmek faydalıdır.

The Aspose.Words yerleşik diyalogları veya formları yok ancak hem java.awt.print.Printable hem de java.awt.print.Pageable'ı geçersiz kılan [AsposeWordsPrintDocument](https://reference.aspose.com/words/java/com.aspose.words/asposewordsprintdocument/) sınıfını uygular.

Aşağıdaki örnek, Aspose.Words via Yazdırma Önizleme ve Ayarlar iletişim kutularını kullanarak bir belge yazdırmak için bu sınıfları nasıl kullanacağınızı göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-DocumentPreviewAndPrint-PrintDialog.java" >}}

{{% alert color="primary" %}} You can download an example of using the **PrintPreviewDialog** class from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/DocsExamples/Java/src/main/java/DocsExamples/Rendering_and_printing/PrintDocuments.java). {{% /alert %}}

## Bir Sayfada Birden Fazla Sayfa Yazdırma

Aspose.Words **MultipagePrintDocument** sınıfını uygular, böylece basma işlemini özelleştirilmiş mantığınızı uygulayacak şekilde ayarlayabilirsiniz, bunun için belgenin basılan sayfada nasıl görüneceğini tanımlarsınız. **MultipagePrintDocument** sınıfı bir seferde bir kağıda birden fazla sayfa yazdırma kabiliyetini sağlar.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-MultiplePagesOnSheet-MultiplePagesOnSheet.java" >}}

**MultipagePrintDocument** sınıfını nasıl kullanacağınızın bir örneğini [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/c693ec7a8957051c206edc69612094a4169f6def/Examples/DocsExamples/Java/src/main/java/DocsExamples/Rendering_and_printing/PrintDocuments.java#L46)'den indirebilirsiniz.

Bu kod örneğinin sonucu aşağıda gösterilmiştir:

![print_several_pages_on_one_sheet_aspose_words_java](print-several-pages-on-one-sheet.png)/
