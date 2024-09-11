---
title: Kitap İşaretleriyle Çalışma Java ile
second_title: Aspose.Words için Java
articleTitle: Kitap Çubuğu ile Çalışmak
linktitle: Kitap Çubuğu ile Çalışmak
description: "Yer imi kavramlarını anlama ve Java kullanarak bir programda yer iminin nasıl kullanılacağını görme."
type: docs
weight: 180
url: /tr/java/working-with-bookmarks/
---

Kitap Çubukları bir Microsoft Word belgesindeki konumları veya parçalarını adlandığınız ve gelecekte başvurmak üzere tanımladığınız yerlerde belirler. Örneğin, daha sonra gözden geçirmek istediğiniz metni tanımlamak için bir kitap çubuğu kullanabilirsiniz. Belge içinde kaydırarak metni bulmak yerine, Kitap Çubuğu iletişim kutusu aracılığıyla ona gidebilirsiniz.

Aspose.Words ile sen, raporlarda ya da belgelerde yer imleri kullanabilir ve yer imlerine baz alarak bazı verileri yer imine ekleyebilir ya da içeriği özel biçimde biçimlendirebilirsin. Ayrıca, belge içinde belirli bir noktadan metni geri almak için de yer imlerini kullanabilirsin.

Kitap işaretleri kullanarak yapılabilecek eylemler Aspose.Words'i kullanarak Microsoft Word'i kullandığınızda aynıdır. Yeni bir kitap işareti ekleyebilir, silinebilir, bir kitap işaretine gidebilir, adı alabilir veya ayarlayabilirsiniz, içinde metin içeren ad alabilir veya ayarlayabilirsiniz.

## Bir Yer İşareti Ekle

Başlangıç ve bitiş noktalarını işaretleyerek bir yer imi oluşturmak için [startBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startBookmark-java.lang.String) ve [endBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endBookmark-java.lang.String) kullanın. Aynı yer imisi adını her iki yönteme de geçirmeyi unutmayın. Bir belge içindeki yer imleri örtüşebilir ve herhangi bir aralığı kaplayabilir. Kötü oluşturulmuş yer imleri veya aynı adı olan yer imleri, belge kaydedilirken göz ardı edilir.

{{% alert color="primary" %}}

Yer imzaları içindeki tüm beyaz boşluklar alt çizilerle değiştirildi. Bu kısıtlama MS Word formatlarından kaynaklanıyor, çünkü MS Word formatlarındaki yer imzalarının gibi DOCX veya DOC gibi dosya türleri beyaz boşluklara sahip olamaz. Ancak PDF bu tür yer imzaslarını kabul eder. Bu yüzden artık, PDF'te yer imzaları kullanmanız gerekiyorsa, XPS ya da SWF haritaları ile birlikte beyaz boşlukları kullanabilirsiniz.

{{% /alert %}}

Aşağıdaki kod örneği yeni bir yer imi nasıl oluşturulacağını gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-CreateBookmark-CreateBookmark.java" >}}

## Kitap Çarpıntıları Elde Etmek

Bazen bir dosya koleksiyonuna ihtiyaç duyulur, ya kitapçıkları yinelemek veya başka amaçlar için. Herhangi bir belge düğümü tarafından döndürülen ve bu düğüm içindeki belgenin bir kısmını temsil eden bir **Range** nesnesini ortaya çıkaran herhangi bir özelliğin **Node.getRange** özelliğini kullanın. Bu nesneyi kullanarak bir **BookmarkCollection** alın ve sonra koleksiyon dizinleyicisini kullanarak belirli bir kitapçığı alın.

{{% alert color="primary" %}}

Aşağıdaki örneklerden birinin örnek dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Bookmarks.docx)'tan indirebilirsiniz.

{{% /alert %}}

Aşağıdaki kod örneği bir yer imleri koleksiyonundan yer imleri elde edin nasıl yapılacağını gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-AccessBookmarks-AccessBookmarks.java" >}}

Aşağıdaki kod örneği bir yer imi adı ve metni alma veya ayarlama şeklini gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkNameAndText-BookmarkNameAndText.java" >}}

Aşağıdaki kod örneğinde bir tablo için yer imi nasıl oluşturulacağını göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkTable-BookmarkTable.java" >}}

Bir yer imzasının adını belge içinde halihazırda var olan bir isimle değiştirdiğinizde hata üretilmeyecek ve belgeyi kaydettikten sonra yalnızca ilk yer imlası korunacaktır.

Belgenin bazı işaretçilerinin form alanlarına atandığını unutmayın. Böyle bir işaretçiye geçip bir metin eklemek, metni form alanı koduna ekler. Bu form alanı geçersiz kılmaz ancak eklenen metin görünür değildir çünkü alan kodunun bir parçası olur.

Aşağıdaki kod örneği, işaretlenmiş tablodaki sütunlara nasıl erişileceğini göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-BookmarkTable-BookmarkTableColumns.java" >}}

## Bir İşaret Çubuğuna Taşıyın

Bir yer imzasının içine zengin içerik (sadece düz metin değil) eklemeniz gerekiyorsa, imzanın üzerine gelmek için [moveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String) kullanmalı ve ardından içeriği eklemek için **DocumentBuilder** yöntemlerini ve özelliklerini kullanmalısınız.

## Yüklemeyi Göster / Gizle İşaretlemeyi İçerik

The entire Bookmark (* including the bookmarked content *) can be encapsulated within the True part of the `IF` field using Aspose.Words. It can be in such a way that the `IF` field contains a nested Merge Field in the expression (*Left of Operator*) and depending on the value of the Merge Field, the `IF` field shows or hides the content of Bookmark in Word Document.

Aşağıdaki kod örneği, yer imlerinin nasıl gösterileceğini/ gizleneceğini gösterir.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-ShowHideBookmarks-ShowHideBookmarks_call.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-bookmarks-ShowHideBookmarks-ShowHideBookmarks.java" >}}
