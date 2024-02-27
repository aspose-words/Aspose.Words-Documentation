---
title: C#'te İmleçle Gezinme
second_title: .NET için Aspose.Words
articleTitle: İmleçle Gezinme
linktitle: İmleçle Gezinme
description: "C#'i kullanarak bir belge içindeki paragraf, yer imi veya belirli bir karakter gibi farklı düğümler arasında gezinin."
type: docs
weight: 10
url: /tr/net/navigation-with-cursor/
---

Bir belgeyle çalışırken, ister kısa ister uzun olsun, belgenizin içinde gezinmeniz gerekecektir. Sanal imleçle gezinme, bir belgedeki farklı düğümler arasında gezinme yeteneğini temsil eder.

Kısa bir belgede, belge içinde hareket etmek basittir; çünkü ekleme noktasını istediğiniz yere bulmak için klavyenin ok tuşlarını kullanarak veya fareyi tıklatarak bile ekleme noktasını taşıyabilirsiniz. Ancak çok sayfalı büyük bir belgeye sahip olduğunuzda bu temel teknikler yetersiz kalacaktır.

Bu makalede, bir belgede nasıl hareket edileceği ve sanal imleçle belgenin farklı bölümlerine nasıl gidileceği açıklanmaktadır.

## Mevcut İmleç Konumunu Algılama

Belgenizde gezinme işlemine başlamadan önce, o anda seçili olan düğümü almanız gerekecektir. [CurrentNode](https://reference.aspose.com/words/net/aspose.words/documentbuilder/currentnode/) özelliğini kullanarak imlecin seçilen düğümdeki tam konumunu alabilirsiniz. Ayrıca [CurrentParagraph](https://reference.aspose.com/words/net/aspose.words/documentbuilder/currentparagraph/) ve [CurrentSection](https://reference.aspose.com/words/net/aspose.words/documentbuilder/currentsection/) özelliklerini kullanarak geçerli düğümü almak yerine, seçili paragrafı veya seçili bölümü alabilirsiniz.

[DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/)'i kullanarak gerçekleştirdiğiniz tüm ekleme işlemleri [CurrentNode](https://reference.aspose.com/words/net/aspose.words/documentbuilder/currentnode/)'den önce eklenecektir. Geçerli paragraf boş olduğunda veya imleç paragrafın sonunun hemen öncesine getirildiğinde **CurrentNode** null değerini döndürür.

## Belgede Gezinme Yöntemleri

Metni düzenlerken belgenizde nasıl gezineceğinizi ve tam olarak nereye taşınacağınızı bilmek önemlidir. Aspose.Words, bir belgede dolaşmanıza ve farklı bölümlerine ve parçalarına gitmenize olanak tanır; bu, Microsoft Word'deki Gezinme Bölmesi'nin, kaydırma yapmadan bir Word belgesindeki bir sayfaya veya başlığa gitme işlevine benzer.

Ana yöntem, imleç konumunu belgenizdeki belirli bir düğüme taşıyabilmektir, bunu [MoveTo](https://reference.aspose.com/words/net/aspose.words/documentbuilder/moveto/) yöntemini kullanarak başarabilirsiniz.

Aşağıdaki kod örneği, **DocumentBuilder**'in bir belgedeki farklı düğümlere nasıl taşınacağını gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToNode.cs" >}}

Ancak temel **MoveTo** yönteminin yanı sıra daha spesifik olanlar da var.

### Belgenin Başına veya Sonuna Gitme

[MoveToDocumentStart](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetodocumentstart/) ve [MoveToDocumentEnd](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetodocumentend/) yöntemlerini kullanarak belgenizin başına veya sonuna gidebilirsiniz.

Aşağıdaki kod örneği, imleç konumunun bir belgenin başına veya sonuna nasıl taşınacağını gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToDocumentStartEnd.cs" >}}

### Yer İşaretleriyle Gezin

Bulmak istediğiniz bir yeri işaretleyip tekrar kolayca oraya gidebilirsiniz. Belgenize istediğiniz kadar yer imi ekleyebilir ve ardından yer imlerini benzersiz adlarla tanımlayarak bunlar arasında gezinebilirsiniz. [MoveToBookmark](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetobookmark/#movetobookmark/) yöntemini kullanarak bir yer imine gidebilirsiniz.

Aşağıdaki kod örnekleri, imleç konumunun yer imine nasıl taşınacağını gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToBookmark.cs" >}}

### Tablo Hücrelerine Git

[MoveToCell](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetocell/) yöntemini kullanarak bir tablo hücresine geçebilirsiniz. Bu yöntem, imlecinizi belirli bir tablodaki herhangi bir hücreye yönlendirmenizi sağlayacaktır. Ek olarak, **MoveToCell** yönteminde imleci bir hücrede herhangi bir konuma veya belirtilen karaktere taşımak için bir dizin belirleyebilirsiniz.

Aşağıdaki kod örneği, imleç konumunun belirtilen tablo hücresine nasıl taşınacağını gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToTableCell.cs" >}}

### Bir Alana Git

[MoveToField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetofield/) yöntemini kullanarak belgenizdeki belirli bir alana gidebilirsiniz. Ayrıca [MoveToMergeField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetomergefield/#movetomergefield/) yöntemini kullanarak belirli bir birleştirme alanına geçebilirsiniz.

Aşağıdaki kod örneği, belge oluşturucu imlecinin belirli bir alana nasıl taşınacağını gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToMergeField.cs" >}}

### Bir Üst Bilgiye veya Alt Bilgiye Gitme

[MoveToHeaderFooter](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetoheaderfooter/) yöntemini kullanarak üstbilgi veya altbilginin başına gidebilirsiniz

Aşağıdaki kod örneği, belge oluşturucu imlecinin belge üstbilgisine veya altbilgisine nasıl taşınacağını gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToHeadersFooters.cs" >}}

### Bir Bölüme veya Paragrafa Git

[MoveToParagraph](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetoparagraph/) veya [MoveToSection](https://reference.aspose.com/words/net/aspose.words/documentbuilder/movetosection/) yöntemlerini kullanarak belirli bir bölüme veya paragrafa geçebilirsiniz. Ek olarak, **MoveToParagraph** yöntemi içinde imleci paragrafta herhangi bir konuma veya belirli bir karaktere taşımak için bir dizin belirleyebilirsiniz.

Aşağıdaki kod örneği, bir belgedeki belirli bir bölüme ve belirli bir paragrafa nasıl gidileceğini gösterir:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-Add content using DocumentBuilder-MoveToSection.cs" >}}
