---
title: Python'te İmleçle Gezinme
second_title: Python via .NET için Aspose.Words
articleTitle: İmleçle Gezinme
linktitle: İmleçle Gezinme
description: "Python'i kullanarak bir belge içindeki paragraf, yer imi veya belirli bir karakter gibi farklı düğümler arasında gezinin."
type: docs
weight: 10
url: /tr/python-net/navigation-with-cursor/
---

Bir belgeyle çalışırken, ister kısa ister uzun olsun, belgenizin içinde gezinmeniz gerekecektir. Sanal imleçle gezinme, bir belgedeki farklı düğümler arasında gezinme yeteneğini temsil eder.

Kısa bir belgede, belge içinde hareket etmek basittir; çünkü ekleme noktasını istediğiniz yere bulmak için klavyenin ok tuşlarını kullanarak veya fareyi tıklatarak bile ekleme noktasını taşıyabilirsiniz. Ancak çok sayfalı büyük bir belgeye sahip olduğunuzda bu temel teknikler yetersiz kalacaktır.

Bu makalede, bir belgede nasıl hareket edileceği ve sanal imleçle belgenin farklı bölümlerine nasıl gidileceği açıklanmaktadır.

## Mevcut İmleç Konumunu Algılama

Belgenizde gezinme işlemine başlamadan önce, o anda seçili olan düğümü almanız gerekecektir. [current_node](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_node/) özelliğini kullanarak imlecin seçilen düğümdeki tam konumunu alabilirsiniz. Ayrıca [current_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_paragraph/) ve [current_section](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_section/) özelliklerini kullanarak geçerli düğümü almak yerine, seçili paragrafı veya seçili bölümü alabilirsiniz.

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/)'i kullanarak gerçekleştirdiğiniz tüm ekleme işlemleri [current_node](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_node/)'den önce eklenecektir. Geçerli paragraf boş olduğunda veya imleç paragrafın sonunun hemen öncesine getirildiğinde, [current_node](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/current_node/) Yok değerini döndürür.

## Belgede Gezinme Yöntemleri

Metni düzenlerken belgenizde nasıl gezineceğinizi ve tam olarak nereye taşınacağınızı bilmek önemlidir. Aspose.Words, bir belgede dolaşmanıza ve farklı bölümlerine ve parçalarına gitmenize olanak tanır; bu, Microsoft Word'deki Gezinti Bölmesi'nin, bir Word belgesinde kaydırma yapmadan bir sayfaya veya başlığa gitme işlevine benzer.

Ana yöntem, imleç konumunu belgenizdeki belirli bir düğüme taşıyabilmektir, bunu [move_to](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to/) yöntemini kullanarak başarabilirsiniz.

Aşağıdaki kod örneği, [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/)'in bir belgedeki farklı düğümlere nasıl taşınacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToNode.py" >}}

Ancak temel [move_to](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to/) yönteminin yanı sıra daha spesifik olanlar da var.

### Belgenin Başına veya Sonuna Gitme

[move_to_document_start](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_document_start/) ve [move_to_document_end](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_document_end/) yöntemlerini kullanarak belgenizin başına veya sonuna gidebilirsiniz.

Aşağıdaki kod örneği, imleç konumunun bir belgenin başına veya sonuna nasıl taşınacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToDocumentStartEnd.py" >}}

### Yer İşaretleriyle Gezin

Bulmak istediğiniz bir yeri işaretleyip tekrar kolayca oraya gidebilirsiniz. Belgenize istediğiniz kadar yer imi ekleyebilir ve ardından yer imlerini benzersiz adlarla tanımlayarak bunlar arasında gezinebilirsiniz. [move_to_bookmark](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_bookmark/) yöntemini kullanarak bir yer imine gidebilirsiniz.

Aşağıdaki kod örnekleri, imleç konumunun yer imine nasıl taşınacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToBookmark.py" >}}

### Tablo Hücrelerine Git

[move_to_cell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_cell/) yöntemini kullanarak bir tablo hücresine geçebilirsiniz. Bu yöntem, imlecinizi belirli bir tablodaki herhangi bir hücreye yönlendirmenizi sağlayacaktır. Ek olarak, [move_to_cell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_cell/) yönteminde imleci bir hücrede herhangi bir konuma veya belirtilen karaktere taşımak için bir dizin belirleyebilirsiniz.

Aşağıdaki kod örneği, imleç konumunun belirtilen tablo hücresine nasıl taşınacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToTableCell.py" >}}

### Bir Alana Git

[move_to_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_field/) yöntemini kullanarak belgenizdeki belirli bir alana geçebilirsiniz. Ayrıca [move_to_merge_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_merge_field/) yöntemini kullanarak belirli bir birleştirme alanına geçebilirsiniz.

Aşağıdaki kod örneği, belge oluşturucu imlecinin belirli bir alana nasıl taşınacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToMergeField.py" >}}

### Bir Üst Bilgiye veya Alt Bilgiye Gitme

[move_to_header_footer](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_header_footer/) yöntemini kullanarak üstbilgi veya altbilginin başına gidebilirsiniz

Aşağıdaki kod örneği, belge oluşturucu imlecinin belge üstbilgisine veya altbilgisine nasıl taşınacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToHeadersFooters.py" >}}

### Bir Bölüme veya Paragrafa Git

[move_to_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_paragraph/) veya [move_to_section](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_section/) yöntemlerini kullanarak belirli bir bölüme veya paragrafa geçebilirsiniz. Ayrıca [move_to_paragraph](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_paragraph/) yönteminde imleci paragrafta herhangi bir konuma veya belirtilen karaktere taşımak için bir dizin belirleyebilirsiniz.

Aşağıdaki kod örneği, bir belgedeki belirli bir bölüme ve belirli bir paragrafa nasıl gidileceğini gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-MoveToSection.py" >}}