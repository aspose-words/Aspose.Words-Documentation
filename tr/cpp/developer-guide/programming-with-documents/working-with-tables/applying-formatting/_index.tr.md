---
title: Tablo Biçimlendirme C++
second_title: Aspose.Words için C++
articleTitle: Biçimlendirme Uygula
linktitle: Biçimlendirme Uygula
description: "C++ kullanarak ayrıntılı olarak tablo biçimlendirme. Tablonun her bölümünü biçimlendirmek için C++ kullanın."
type: docs
weight: 70
url: /tr/cpp/applying-formatting/
timestamp: 2024-10-21-11-17-44
---

Bir tablonun her öğesi farklı biçimlendirme ile uygulanabilir. Örneğin, tablo biçimlendirmesi tüm tabloya, satır biçimlendirmesi yalnızca belirli satırlara, hücre biçimlendirmesi yalnızca belirli hücrelere uygulanacaktır.

Aspose.Words bir tabloya biçimlendirme almak ve uygulamak için zengin bir API sağlar. Biçimlendirmeyi ayarlamak için [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/), [RowFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/) ve [CellFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/) düğümlerini kullanabilirsiniz.

Bu makalede, biçimlendirmenin farklı tablo düğümlerine nasıl uygulanacağı ve Aspose.Words tablo biçimlendirme ayarlarının neyi desteklediği hakkında konuşacağız.

## Farklı Düğümlere Biçimlendirme Uygulama

Bu bölümde, çeşitli tablo düğümlerine biçimlendirme uygulamaya bakacağız.

### Tablo Düzeyinde Biçimlendirme

Bir tabloya biçimlendirme uygulamak için [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/), [PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/) ve [TableCollection](https://reference.aspose.com/words/cpp/aspose.words.tables/tablecollection/) sınıflarını kullanarak ilgili **Table** düğümünde bulunan özellikleri kullanabilirsiniz.

{{% alert color="primary" %}}

Tablo özelliklerinin uygulanabilmesi için tablonun en az bir satıra sahip olması gerektiğini unutmayın. Bu, [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) ile bir tablo oluştururken, bu biçimlendirmenin [InsertCell](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertcell/) 'a yapılan ilk çağrıdan sonra veya tabloya ilk satır eklendikten sonra veya düğümler doğrudan DOM'ye eklendiğinde yapılması gerektiği anlamına gelir.

{{% /alert %}}

Aşağıdaki resimler, Microsoft Word içindeki **Table** biçimlendirme özelliklerinin ve bunlara karşılık gelen özelliklerin Aspose.Words içindeki bir temsilini göstermektedir.

![formattin-features-table-level-aspose-words-cpp](applying-formatting-1.png)

![formatting-table-options-aspose-words-cpp](applying-formatting-2.png)

Aşağıdaki kod örneği, bir tabloya anahat kenarlığının nasıl uygulanacağını gösterir:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "apply-outline-border.h" >}}

Aşağıdaki kod örneği, tüm kenarlıkları etkinleştirilmiş (kılavuz) bir tablonun nasıl oluşturulacağını gösterir.:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "build-table-with-borders.h" >}}

### Satır Düzeyinde Biçimlendirme

**Satır düzeyinde**

{{% alert color="primary" %}}

Bir **Row**'nin yalnızca bir **Table**'ın alt düğümü olabileceğini unutmayın. Aynı zamanda, biçimlendirmenin uygulanabilmesi için **Row** içinde en az bir **Cell** olmalıdır.

{{% /alert %}}

Aşağıdaki resimler, Microsoft Word içindeki **Row** biçimlendirme özelliklerinin ve bunlara karşılık gelen özelliklerin Aspose.Words içindeki bir temsilini göstermektedir.

![formatting-row-level-aspose-words-cpp](applying-formatting-3.png)

Aşağıdaki kod örneği, tablo satırı biçimlendirmesinin nasıl değiştirileceğini gösterir:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "modify-row-formatting.h" >}}

### Hücre Düzeyinde Biçimlendirme

Hücre düzeyinde biçimlendirme [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/), [CellFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/) ve [CellCollection](https://reference.aspose.com/words/cpp/aspose.words.tables/cellcollection/) sınıfları tarafından denetlenir.

{{% alert color="primary" %}}

Bir **Cell**'in yalnızca bir **Row**'nin alt düğümü olabileceğini unutmayın. Aynı zamanda, biçimlendirmenin ona uygulanabilmesi için **Cell** içinde en az bir [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/) olmalıdır.

**Paragraph** 'a ek olarak, **Cell**'ye bir **Table** de ekleyebilirsiniz.

{{% /alert %}}

Aşağıdaki resimler, Microsoft Word içindeki **Cell** biçimlendirme özelliklerinin ve bunlara karşılık gelen özelliklerin Aspose.Words içindeki bir temsilini göstermektedir.

![formatting-cell-level-aspose-words-cpp](applying-formatting-4.png)

![auto-formatting-cell-level-aspose-words-cpp](applying-formatting-5.png)

Aşağıdaki kod örneği, bir tablo hücresinin biçimlendirmesinin nasıl değiştirileceğini gösterir:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "modify-cell-formatting.h" >}}

Aşağıdaki kod örneği, hücrenin içeriğinin soluna / üstüne / sağına / altına eklenecek boşluk miktarının (nokta olarak) nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "cell-padding.h" >}}

## Satır Yüksekliklerini Belirtin

Satır yüksekliğini ayarlamanın en basit yolu **DocumentBuilder** değerini kullanmaktır. Uygun **RowFormat** özelliklerini kullanarak, varsayılan yükseklik ayarını yapabilir veya tablodaki her satır için farklı bir yükseklik uygulayabilirsiniz.

Aspose.Words 'da tablo satırı yüksekliği şu şekilde kontrol edilir::

- satır yüksekliği özelliği - [Height](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_height/)
- verilen satır için yükseklik kuralı özelliği - [HeightRule](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_heightrule/)

Aynı zamanda, her satır için farklı bir yükseklik ayarlanabilir – bu, tablo ayarlarını geniş çapta kontrol etmenizi sağlar.

{{% alert color="primary" %}}

Bir nesnenin yüksekliğini belirtmek için kural seçenekleri [HeightRule](https://reference.aspose.com/words/cpp/aspose.words/heightrule/) numaralandırması kullanılarak ayarlanabilir.

{{% /alert %}}

Aşağıdaki kod örneği, tek bir hücre içeren bir tablonun nasıl oluşturulacağını ve satır biçimlendirmesinin nasıl uygulanacağını gösterir:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "apply-row-formatting.h" >}}

## Tablo ve Hücre Genişliklerini Belirleme

Microsoft Word belgesindeki bir tablo, tabloyu ve tek tek hücreleri yeniden boyutlandırmak için birkaç farklı yol sağlar. Bu özellikler, tablonun görünümü ve davranışı üzerinde önemli ölçüde kontrol sağlar, böylece Aspose.Words, Microsoft Word'daki gibi tabloların davranışını destekler.

Tablo öğelerinin, tek tek hücrelerin yanı sıra genel tablonun genişliklerinin nasıl hesaplandığını etkileyebilecek birkaç farklı özellik sunduğunu bilmek önemlidir:

- Masada tercih edilen genişlik
- Tek tek hücrelerde tercih edilen genişlik
- Tabloya otomatik sığdırmaya izin verme

Bu makalede, çeşitli tablo genişliği hesaplama özelliklerinin nasıl çalıştığı ve tablo genişliği hesaplaması üzerinde tam denetimin nasıl elde edileceği ayrıntılı olarak açıklanmaktadır. Bu
tablo düzeninin beklendiği gibi görünmediği durumlarda bilmek özellikle yararlıdır.

{{% alert color="primary" %}}

Çoğu durumda, tablo genişliğinden daha çok tercih edilen hücre önerilir. Tercih edilen hücre genişliği, DOCX biçim belirtiminin yanı sıra Aspose.Words modeliyle daha uyumludur.

Hücre genişliği aslında DOCX biçimi için hesaplanan bir değerdir. Gerçek hücre genişliği birçok şeye bağlı olabilir. Örneğin, sayfa kenar boşluklarını veya tercih edilen tablo genişliğini değiştirmek gerçek hücre genişliğini etkileyebilir.

Tercih edilen hücre genişliği, belgede depolanan bir hücre özelliğidir. Hiçbir şeye bağlı değildir ve tabloyu veya hücrenin diğer özelliklerini değiştirdiğinizde değişmez.

{{% /alert %}}

{{% alert color="primary" %}}

Bu makalede açıklanan tüm özellikler ve yöntemler, tabloların Microsoft Word içinde nasıl çalıştığıyla ilgilidir. Bu nedenle, çoğu durumda, tablonuzu programlı olarak oluşturuyorsanız ancak istediğiniz tabloyu oluşturmayı zor buluyorsanız, bunun yerine önce Microsoft Word içinde görsel olarak oluşturmayı deneyebilir ve ardından biçimlendirme değerlerini uygulamanıza kopyalayabilirsiniz.

{{% /alert %}}

### Tercih Edilen Genişlik Nasıl Kullanılır

Bir tablonun veya tek tek hücrelerin istenen genişliği, bir öğenin sığdırmaya çalıştığı boyut olan tercih edilen genişlik özelliği aracılığıyla tanımlanır. Diğer bir deyişle, tercih edilen genişlik tüm tablo veya tek tek hücreler için belirtilebilir. Bazı durumlarda bu genişliğe tam olarak sığdırmak mümkün olmayabilir, ancak çoğu durumda gerçek genişlik bu değere yakın olacaktır.

Uygun tercih edilen genişlik türü ve değeri [PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/) sınıfının yöntemleri kullanılarak ayarlanır:

- otomatik veya "tercih edilen genişlik yok" belirtmek için [Auto](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/auto/) yöntemi
- yüzde genişliği belirtmek için [FromPercent](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/frompercent/) yöntemi
- nokta cinsinden genişliği belirtmek için [FromPoints](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/frompoints/) yöntemi

Aşağıdaki resimler, Microsoft Word 'deki *preferred width setting features* ve bunlara karşılık gelen özelliklerin Aspose.Words'deki bir temsilini göstermektedir.

![formatting-table-properties-aspose-words-cpp](applying-formatting-8.png)

Bu seçeneklerin bir belgedeki gerçek bir tabloya nasıl uygulandığına bir örnek aşağıdaki resimde görülebilir.

![todo:image_alt_text](applying-formatting-9.png)

{{% alert color="primary" %}}

Bir tabloda tercih edilen genişliği kullanabilmeniz için önce tablonun en az bir satır içerdiğinden emin olmanız gerekir. Bunun nedeni, bir Microsoft Word belgesindeki veya Aspose.Words 'de oluşturulan bir belgedeki bu tür tablo biçimlendirmesinin tablonun satırlarında saklanmasıdır.

{{% /alert %}}

#### Tercih Edilen Tabloyu veya Hücre Genişliğini Belirtin

Aspose.Words 'te tablo ve hücre genişlikleri, [Table.PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_preferredwidth/) özelliği ve [CellFormat.PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_preferredwidth/) özelliği kullanılarak ayarlanır ve [PreferredWidthType](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidthtype/) numaralandırmasında seçenekler bulunur:

- **Auto**, tercih edilen genişlik kümesine eşdeğer değildir
- **Percent**, pencere veya kapsayıcı boyutundaki kullanılabilir alana göre öğeye uyan ve kullanılabilir genişlik değiştiğinde değeri yeniden hesaplayan
- **Points**, nokta cinsinden belirtilen genişlikte bir öğeye karşılık gelir

{{% alert color="primary" %}}

Varsayılan olarak, bir tablo sayfadaki kullanılabilir alanın% 100'üne yerleştirilmiş olarak tanımlanabilir. Bu durumda, bu, tablonun sol ve sağ sayfa kenar boşlukları arasındaki boşluğu kaplamaya çalışacağı anlamına gelir.

{{% /alert %}}

[Table.PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_preferredwidth/) özelliğini kullanmak, kapsayıcısına göre tercih edilen genişliğini ayarlar: iç içe geçmiş bir tablo ise sayfa, metin sütunu veya dış tablo hücresi.

Aşağıdaki kod örneği, tabloyu sayfa genişliğinin % 50'sine otomatik sığacak şekilde nasıl ayarlayacağınızı gösterir:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "auto-fit-to-page-width.h" >}}

Belirli bir hücrede [CellFormat.PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_preferredwidth/) özelliğini kullanmak, tercih edilen genişliğini ayarlar.

Aşağıdaki kod örneği, farklı tercih edilen genişlik ayarlarının nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "preferred-width-settings.h" >}}

#### Tercih Edilen Genişlik Türünü ve Değerini Bulun

İstediğiniz tablo veya hücrenin tercih edilen genişlik ayrıntılarını bulmak için [Type](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidthtype/) ve [Value](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidthtype/) özelliklerini kullanabilirsiniz.

Aşağıdaki kod örneği, bir tablo hücresinin tercih edilen genişlik türünün nasıl alınacağını gösterir:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "retrieve-preferred-width-type.h" >}}

### Otomatik Sığdır Nasıl Ayarlanır

[AllowAutoFit](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowautofit/) özelliği, bir tablodaki hücrelerin seçili bir ölçüte göre büyümesine ve küçülmesine izin verir. Örneğin, tabloyu sayfanın genişliğine sığdırmak için **AutoFit to Window** seçeneğini ve her hücrenin içeriğine göre büyümesine veya küçülmesine izin vermek için **AutoFit to Content** seçeneğini kullanabilirsiniz.

{{% alert color="primary" %}}

Ayrıca, **AllowAutoFit** özelliği, içeriğine otomatik olarak uyan ancak aynı zamanda başlangıç genişliğine sahip bir hücreyi biçimlendirmek için tercih edilen bir hücre genişliği ile birlikte kullanılabilir. Gerekirse, hücre genişliği bu genişliğin ötesine geçebilir.

{{% /alert %}}

Varsayılan olarak, Aspose.Words **AutoFit to Window** kullanarak yeni bir tablo ekler. Tablo, mevcut sayfa genişliğine göre boyutlandırılacaktır. Bir tabloyu yeniden boyutlandırmak için [AutoFit](https://reference.aspose.com/words/cpp/aspose.words.tables/table/autofit/) yöntemini çağırabilirsiniz. Bu yöntem, tabloya ne tür bir otomatik sığdırmanın uygulanacağını belirten bir [AutoFitBehavior](https://reference.aspose.com/words/cpp/aspose.words.tables/autofitbehavior/) numaralandırmasını kabul eder.

Otomatik sığdır yönteminin aslında tabloya aynı anda farklı özellikler uygulayan bir kısayol olduğunu bilmek önemlidir. Bunlar, tabloya gözlemlenen davranışı gerçekten veren özelliklerdir. Her otomatik sığdır seçeneği için bu özellikleri tartışacağız.

Aşağıdaki kod örneği, her hücreyi içeriğine göre küçültmek veya büyütmek için bir tablonun nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "allow-auto-fit.h" >}}

#### AutoFit Tablodan Pencereye

Bir pencereye otomatik sığdırma bir tabloya uygulandığında, perde arkasında gerçekte aşağıdaki işlemler gerçekleştirilir:

1. **Table.AllowAutoFit** özelliği, **Table.PreferredWidth** değeri 100 olan sütunları kullanılabilir içeriğe uyacak şekilde otomatik olarak yeniden boyutlandırmak için etkinleştirilir%
2. **CellFormat.PreferredWidth** tüm tablo hücrelerinden kaldırılır
   {{% alert color="primary" %}}
   Bunun, her hücrenin tercih edilen genişliğinin geçerli boyutlarına ve içeriğine göre uygun değerlere ayarlandığı Microsoft Word davranışından biraz farklı olduğunu unutmayın. Aspose.Words tercih edilen genişliği güncellemez, bu yüzden bunun yerine temizlenirler.
   {{% /alert %}}
3. Sütun genişlikleri geçerli tablo içeriği için yeniden hesaplanır - sonuç, kullanılabilir genişliğin tamamını kaplayan bir tablodur
4. Kullanıcı metni düzenledikçe tablodaki sütunların genişliği otomatik olarak değişir

Aşağıdaki kod örneği, bir tablonun sayfa genişliğine nasıl otomatik sığdırılacağını gösterir:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "auto-fit-table-to-page-width.h" >}}

#### AutoFit Tablodan içeriğe

Tablo içeriğe otomatik olarak yerleştirildiğinde, perde arkasında gerçekte aşağıdaki adımlar gerçekleştirilir:

1. **Table.AllowAutoFit** özelliği, her hücreyi içeriğine göre otomatik olarak yeniden boyutlandırmak için etkinleştirilir

2. Tercih edilen tablo genişliği **Table.PreferredWidth** 'den kaldırılır, her tablo hücresi için **CellFormat.PreferredWidth** kaldırılır
   {{% alert color="primary" %}}

   Bu otomatik sığdır seçeneğinin, Microsoft Word'deki gibi hücrelerden tercih edilen genişliği kaldırdığını unutmayın. Sütun boyutlarını korumak ve içeriğe uyacak şekilde sütunları artırmak veya azaltmak istiyorsanız, otomatik sığdır kısayolunu kullanmak yerine **Table.AllowAutoFit** özelliğini kendi başına **True** olarak ayarlamanız gerekir.{{% /alert %}}

3. Geçerli tablo içeriği için sütun genişlikleri yeniden hesaplanır - sonuç, kullanıcı metni düzenlerken içeriğe en iyi şekilde uyacak şekilde sütun genişliklerinin ve tüm tablonun genişliğinin otomatik olarak yeniden boyutlandırıldığı bir tablodur

Aşağıdaki kod örneği, bir tablonun içeriğine nasıl otomatik sığdırılacağını gösterir:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "auto-fit-table-to-contents.h" >}}

#### Tabloda AutoFit değerini Devre dışı Bırakın ve Sabit Sütun Genişliklerini Kullanın

Bir tabloda otomatik sığdırma devre dışı bırakılmışsa ve bunun yerine sabit sütun genişlikleri kullanılıyorsa, aşağıdaki adımlar gerçekleştirilir:

1. **Table.AllowAutoFit** özelliği devre dışıdır, böylece sütunlar içeriklerine büyümez veya küçülmez
2. Tüm tablonun tercih edilen genişliği **Table.PreferredWidth** 'den kaldırılır, **CellFormat.PreferredWidth** tüm tablo hücrelerinden kaldırılır
3. Sonuç, sütun genişlikleri [CellFormat.Width](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_width/) özelliği tarafından belirlenen ve kullanıcı metin girdiğinde veya sayfa yeniden boyutlandırıldığında sütunları otomatik olarak yeniden boyutlandırılmayan bir tablodur

{{% alert color="primary" %}}

**CellFormat.Width** için genişlik belirtilmezse, varsayılan değerin bir inç (72 nokta) kullanıldığını unutmayın.

{{% /alert %}}

Aşağıdaki kod örneği, otomatik sığdırmanın nasıl devre dışı bırakılacağını ve belirtilen tablo için sabit genişliğin nasıl etkinleştirileceğini gösterir:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "auto-fit-table-to-fixed-column-widths.h" >}}

### Hücre Genişliğini Hesaplarken Öncelik Sırası

Aspose.Words, kullanıcıların bir tablonun veya hücrenin genişliğini [CellFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/) dahil olmak üzere birden çok nesne aracılığıyla tanımlamasına olanak tanır – [Width](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_width/) özelliği çoğunlukla önceki sürümlerden kalmıştır, ancak yine de hücre genişliğini ayarlamayı basitleştirmek için kullanışlıdır.

**CellFormat.Width** özelliğinin, tabloda zaten bulunan diğer genişlik özelliklerinden hangisine bağlı olarak farklı çalıştığını bilmek önemlidir.

Aspose.Words hücre genişliklerini hesaplamak için aşağıdaki sırayı kullanır:

| Sipariş | Mülk | Tanım |
| :- | :- | :- |
|  | [AllowAutoFit](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowautofit/) belirlenir | **AutoFit** etkinleştirilmişse:<br />- tablo, içeriği barındırmak için tercih edilen genişliğin ötesine geçebilir - genellikle tercih edilen genişliğin altına küçülmez<br />- **CellFormat.Width** değerindeki herhangi bir değişiklik göz ardı edilir ve bunun yerine hücre içeriğine sığar |
|  | [PreferredWidthType](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/get_type/) değeri **Points** veya **Percent** olan | **CellFormat.Width** yoksayılır |
|  | [PreferredWidthType](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/get_type/) değeri **Auto** olan | **CellFormat.Width** değeri kopyalanır ve hücrenin tercih edilen genişliği (nokta cinsinden) olur |

{{% alert color="primary" %}}

Width özelliğindeki değişiklikler tercih edilen genişlikte güncellenmez ve bunun yerine tercih edilen genişliğe uygulanmalıdır.

{{% /alert %}}

{{% alert color="primary" %}}

Sabit bir tablo düzeni oluştururken hücre genişliğini belirtin. Genişliği olmayan bir hücre DOC biçimine kaydedilemez. DOCX gibi DOC dışındaki belge biçimleri, ilke olarak, sabit bir tablo düzeninde genişliği olmayan hücrelerin kaydedilmesine izin verir.

{{% /alert %}}

## Hücreler Arasındaki Boşluğa İzin ver

Tablo hücreleri arasında Microsoft Word 'deki "Hücre aralığı" seçeneğine benzer herhangi bir ek boşluk alabilir veya ayarlayabilirsiniz. Bu [AllowCellSpacing](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowcellspacing/) özelliği kullanılarak yapılabilir.

Bu seçeneklerin bir belgedeki gerçek bir tabloya nasıl uygulandığına bir örnek aşağıdaki resimde görülebilir.

<img src="applying-formatting-10.png" alt="formatting-spacing-between-cells-aspose-words-cpp" style="width:500px"/>

Aşağıdaki kod örneği, hücreler arasındaki aralığın nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "allow-cell-spacing.h" >}}

## Kenarlıklar ve Gölgelendirme Uygulayın

Kenarlıklar ve gölgelendirme, tüm tabloya [Table.SetBorder](https://reference.aspose.com/words/cpp/aspose.words.tables/table/setborder/), [Table.SetBorders](https://reference.aspose.com/words/cpp/aspose.words.tables/table/setborders/) ve [Table.SetShading](https://reference.aspose.com/words/cpp/aspose.words.tables/table/setshading/) kullanılarak veya yalnızca [CellFormat.Borders](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_borders/) ve [CellFormat.Shading](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_shading/) kullanılarak belirli hücrelere uygulanabilir. Ek olarak, satır kenarlıkları [RowFormat.Borders](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_borders/) kullanılarak ayarlanabilir, ancak gölgeleme bu şekilde uygulanamaz.

Aşağıdaki resimler Microsoft Word 'daki kenarlık ve gölge ayarlarını ve bunlara karşılık gelen özellikleri Aspose.Words'de göstermektedir.

![formatting-border-line-aspose-words-cpp](applying-formatting-6.png)

![formatting-cell-color-aspose-words-cpp](applying-formatting-7.png)

Aşağıdaki kod örneği, bir tabloyu ve hücreyi farklı kenarlıklar ve gölgelendirmelerle nasıl biçimlendireceğinizi gösterir:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "format-table-and-cell-with-different-borders.h" >}}
