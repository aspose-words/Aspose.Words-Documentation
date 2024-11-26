---
title: Python'te Yer İşaretleriyle Çalışmak
second_title: Python via .NET için Aspose.Words
articleTitle: Yer İşaretleriyle Çalışmak
linktitle: Yer İşaretleriyle Çalışmak
description: "Python kullanarak yer imleri nasıl eklenir, alınır, taşınır, gösterilir veya gizlenir."
type: docs
weight: 180
url: /tr/python-net/working-with-bookmarks/
timestamp: 2024-01-27-14-07-04
---

Yer imleri, bir Microsoft Word belgesinde, ileride başvurmak üzere adlandırdığınız ve tanımladığınız konumları veya parçaları tanımlar. Örneğin, daha sonra düzeltmek istediğiniz metni tanımlamak için yer imini kullanabilirsiniz. Metni bulmak için belgeyi kaydırmak yerine Yer İşareti iletişim kutusunu kullanarak metne gidebilirsiniz.

Aspose.Words kullanarak yer imleriyle gerçekleştirebileceğiniz işlemler, Microsoft Word kullanarak gerçekleştirebileceğiniz işlemlerle aynıdır. Yeni bir yer imi ekleyebilir, silebilir, bir yer imine taşıyabilir, bir yer imi adı alabilir veya ayarlayabilir, içindeki metni alabilir veya ayarlayabilirsiniz. Aspose.Words ile, bazı verileri yer imine eklemek veya içeriğine özel biçimlendirme uygulamak için rapor veya belgelerdeki yer imlerini de kullanabilirsiniz. Belgenizdeki belirli bir konumdan metin almak için yer imlerini de kullanabilirsiniz.

## Yer İşareti Ekle

Sırasıyla başlangıcını ve bitişini işaretleyerek bir yer imi oluşturmak için [start_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/start_bookmark/) ve [end_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/end_bookmark/)'yi kullanın. Her iki yönteme de aynı yer imi adını aktarmayı unutmayın. Bir belgedeki yer imleri herhangi bir aralıkla örtüşebilir ve yayılabilir. Kötü biçimlendirilmiş yer imleri veya yinelenen adlara sahip yer imleri, belge kaydedildiğinde göz ardı edilecektir.

{{% alert color="primary" %}}

Yer imlerindeki tüm beyaz boşlukların yerini alt çizgiler aldı. DOCX veya DOC gibi MS Word formatlarındaki yer imlerinde beyaz boşluklar bulunamayacağından, bu kısıtlama MS Word formatlarından kaynaklanmaktadır. Ancak PDF bu tür yer imlerine izin verir. Artık PDF veya XPS ana hatlarında yer imleri kullanmanız gerekiyorsa bunları beyaz boşluklarla kullanabilirsiniz.

{{% /alert %}}

Aşağıdaki kod örneği, yeni bir yer işaretinin nasıl oluşturulacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-CreateBookmark.py" >}}

## Yer İşaretlerini Alın

Bazen yer imleri arasında geçiş yapmak veya başka amaçlar için bir yer imi koleksiyonu edinmek gerekebilir. Bu düğümde bulunan belgenin bir kısmını temsil eden bir [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) nesnesi döndüren herhangi bir belge düğümü tarafından sunulan [Node.range](https://reference.aspose.com/words/python-net/aspose.words/node/range/) özelliğini kullanın. Bir [BookmarkCollection](https://reference.aspose.com/words/python-net/aspose.words/bookmarkcollection/) almak için bu nesneyi kullanın ve ardından belirli bir yer imini almak için koleksiyon dizin oluşturucuyu kullanın.

{{% alert color="primary" %}}

Bu örneklerin örnek dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Bookmarks.docx)'ten indirebilirsiniz.

{{% /alert %}}

Aşağıdaki kod örneği, yer işareti koleksiyonundan yer işaretlerinin nasıl alınacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-AccessBookmarks.py" >}}

Aşağıdaki kod örneği, yer işareti adının ve metninin nasıl alınacağını veya ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-UpdateBookmarkData.py" >}}

Aşağıdaki kod örneği, bir tabloya nasıl yer işareti koyulacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-BookmarkTable.py" >}}

Bir yer iminin adını belgede zaten mevcut olan bir adla değiştirirseniz hiçbir hata oluşturulmayacak ve belgeyi kaydettiğinizde yalnızca ilk yer imi saklanacaktır.

Belgedeki bazı yer imlerinin form alanlarına atandığını unutmayın. Böyle bir yer imine gitmek ve oraya metin eklemek, metni form alanı koduna ekler. Bu, form alanını geçersiz kılmasa da, eklenen metin alan kodunun bir parçası haline geldiğinden görünmeyecektir.

Aşağıdaki kod örneği, yer imlerine eklenen tablonun sütunlarına nasıl erişileceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-BookmarkTableColumns.py" >}}

## Bir Yer İmine Taşı

Bir yer imine zengin içerik (yalnızca düz metin değil) eklemeniz gerekiyorsa, imleci yer imine taşımak için [move_to_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_bookmark/)'i, ardından içerik eklemek için [DocumentBuilder's](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) yöntemlerini ve özelliklerini kullanmalısınız.

## Göster Yer İşareti İçeriğini Gizle

Yer İminin tamamı (*yer imi eklenen içerik dahil*), Aspose.Words kullanılarak `IF` alanının Gerçek kısmı içinde kapsüllenebilir. `IF` alanı ifadede (*İşleticinin Solunda*) iç içe bir Birleştirme Alanı içerecek şekilde olabilir ve Birleştirme Alanının değerine bağlı olarak `IF` alanı Word Belgesindeki Yer İşaretinin içeriğini gösterir veya gizler.

Aşağıdaki kod örneği, yer işaretlerinin nasıl gösterileceğini/gizleneceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-ShowHideBookmarks.py" >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_bookmarks-ShowHideBookmarkedContent.py" >}}
