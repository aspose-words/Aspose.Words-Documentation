---
title: Fare ile Gezinti Java ile
second_title: Aspose.Words için Java
articleTitle: Kursör ile Gezinme
linktitle: Kursör ile Gezinme
description: "Bir paragraf, bir işaretleyici veya belirli bir karakter gibi bir belgede farklı düğümler arasında gezinmek için Java'i kullanın."
type: docs
weight: 5
url: /tr/java/navigation-with-cursor/
---

Bir belge üzerinde çalışırken, kısa veya uzun olsun, belgenin içinden geçmeniz gerekecektir. Sanal imleç ile gezinme farklı noktalar arasında bir belgeyi gezme yeteneğini temsil eder.

Kısa bir belge içinde, bir belgedeki gezinme basitçe imleci klavyenin ok tuşlarını veya imleci tıklayarak istediğiniz yerde konumlandırarak bile hareket ettirebilir. Ancak çok sayıda sayfaya sahip büyük bir belgeniz varsa bu temel teknikler yetersiz kalacaktır.

Bu makale bir belgeyi nasıl gezileceğini ve sanal imleç kullanarak farklı kısımlarına nasıl yönlendirileceğini açıklamaktadır.

## Geçerli Fare Konumunu Algılama

Dokümanınızdan geçmeye başlamadan önce seçili düğümü almanız gerekecek. Seçili bir düğüme göre tam fare imleci konumunu almak için [CurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentNode) özelliğini kullanabilirsiniz. Buna ek olarak, geçerli düğüm yerine, geçerli paragrafı veya şu anda seçilen bölümü almak için [CurrentParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentParagraph) ve [CurrentSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCurrentSection) özelliklerini kullanabilirsiniz.

Bu [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) kullanarak gerçekleştirdiğiniz herhangi bir ekleme işlemi, [CurrentNode](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#CurrentNode) 'den önce eklenecektir. Geçerli paragraf boşsa veya imleç paragrafın sonunda doğru konumlandırılmışsa, **CurrentNode** null döndürür.

## Bir Dokümanda Navigasyon Yöntemleri

Metin düzenlerken, belgenizi nasıl gezineceğinizi ve tam olarak ona nasıl geçeceğinizi bilmek önemlidir. Aspose.Words sizi bir belge içinde hareket etmenizi sağlar ve farklı bölümlerine ve parçalarına doğru gezdirir – bu Microsoft Word'deki Gezinti Paneli'nin işlevselliğine benzer, bir Word belgesinde sayfa veya başlığa doğru kaydırmadan gitmenizi sağlar.

Ana yöntem, imleç pozisyonunu belgenizdeki belirli bir düğüme taşıyabilme yeteneğidir, bunu yapmak için [MoveTo](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveTo-com.aspose.words.Node) yöntemini kullanabilirsiniz.

Aşağıdaki kod örneği bir belgedeki farklı düğümleri kullanarak **DocumentBuilder**'i nasıl taşıyacağını gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToNode-DocumentBuilderMoveToNode.java" >}}

Ama temel **MoveTo** yönteminin yanı sıra daha spesifik olanlar da var.

### Bir Belgeye Başlangıç veya Sonunu Gezin

Belgenizin başına veya sonuna [MoveToDocumentStart](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentStart) ve [MoveToDocumentEnd](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToDocumentEnd) yöntemlerini kullanarak gidebilirsiniz.

Aşağıdaki kod örneği, bir belgenin başlangıcına veya sonuna imleci nasıl taşıyacağınızı göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToDocumentStartEnd-DocumentBuilderMoveToDocumentStartEnd.java" >}}

### Kitap Çubuğu ile Gezin

Bulmak istediğiniz bir yeri işaretleyebilir ve kolayca oraya geri gidebilirsiniz. Belgeye istediğiniz kadar yer imi ekleyebilir, sonra benzersiz adlarla işaretleyerek onları gezinebilirsiniz. Bir yer imine [MoveToBookmark](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToBookmark-java.lang.String-boolean-boolean) yöntemiyle ulaşabilirsiniz.

Aşağıdaki kod örnekleri bir imlezin konumunu nasıl bir yer işaretine taşıdığını gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToBookmark-DocumentBuilderMoveToBookmark.java" >}}

### Tablo Hücrelerine Navigasyon Yapın

Bir tablo hücresine geçmek için [MoveToCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToCell-int-int-int-int) yöntemini kullanabilirsiniz. Bu yöntem sizi belirli bir tablodaki herhangi bir hücreye yönlendirmek için imleci kullanmanıza olanak tanıyacaktır. Buna ek olarak, belirtilen bir dizine hareket etmek için imleci herhangi bir konuma veya belirtilen bir karaktere taşımak için **MoveToCell** yöntemini belirtebilirsiniz.

Aşağıdaki kod örneği bir imlecin belirtilen tablo hücresine hareketini nasıl gösterir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToTableCell-DocumentBuilderMoveToTableCell.java" >}}

### Bir Alan'a Git

Belge içinde belirli bir alana geçmek için [MoveToField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToField-com.aspose.words.Field-boolean) yöntemini kullanabilirsiniz. Buna ek olarak, belirli bir birleştirme alanına girmek için [MoveToMergeField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToMergeField-java.lang.String) yöntemini kullanabilirsiniz.

Aşağıdaki kod örneği, belge oluşturucu imlecinin nasıl belirli bir alana taşınacağını göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToMergeField-DocumentBuilderMoveToMergeField.java" >}}

### Bir Başlık veya Altbilgiye Geçin

Başlık veya alt bilgi hareket [MoveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int) yöntemini kullanarak bir başlık veya alt bilgiye geçebilirsiniz

Aşağıdaki kod örneği, belge oluşturucu imlecini bir belge başlığına veya alt bilgisine nasıl taşıyacağını göstermektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderHeadersAndFooters-DocumentBuilderHeaderAndFooters.java" >}}

### Bir Bölüme veya Paragrafı Gezin

Belirli bir bölüme veya paragraflara geçebilirsiniz [MoveToParagraph](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToParagraph-int-int) veya [MoveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int) yöntemlerini kullanarak. Ayrıca, **MoveToParagraph** yöntemini kullanarak imleci belirli bir konuma veya paragraflardaki belirli bir karaktere taşımak için bir dizin belirtebilirsiniz.

Aşağıdaki kod örneğinde bir belgedeki belirli bir bölüme ve paragraflara nasıl geçileceğini gösterilmektedir:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderMoveToSectionParagraph-DocumentBuilderMoveToSectionParagraph.java" >}}
