---
title: Python'te Tablo Biçimlendirme
second_title: Python via .NET için Aspose.Words
articleTitle: Biçimlendirmeyi Uygula
linktitle: Biçimlendirmeyi Uygula
description: "Python kullanarak ayrıntılı olarak tablo biçimlendirme. Tablonun her bölümünü biçimlendirmek için Python'i kullanın."
type: docs
weight: 70
url: /tr/python-net/applying-formatting/
---

Bir tablonun her öğesi farklı biçimlendirmeyle uygulanabilir. Örneğin, tablo biçimlendirmesi tablonun tamamına, satır biçimlendirmesi yalnızca belirli satırlara, hücre biçimlendirmesi yalnızca belirli hücrelere uygulanacaktır.

Aspose.Words, bir tabloya biçimlendirme almak ve uygulamak için zengin bir API sağlar. Biçimlendirmeyi ayarlamak için [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), [RowFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/) ve [CellFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/) düğümlerini kullanabilirsiniz.

Bu yazımızda farklı tablo düğümlerine formatlamanın nasıl uygulanacağından ve Aspose.Words'in hangi tablo formatlama ayarlarını desteklediğinden bahsedeceğiz.

## Farklı Düğümlere Biçimlendirme Uygula

Bu bölümde formatın çeşitli tablo düğümlerine uygulanmasına bakacağız.

### Tablo Düzeyinde Biçimlendirme

Bir tabloya biçimlendirme uygulamak için [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), [PreferredWidth](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidth/) ve [TableCollection](https://reference.aspose.com/words/python-net/aspose.words.tables/tablecollection/) sınıflarını kullanarak karşılık gelen **Table** düğümünde bulunan özellikleri kullanabilirsiniz.

{{% alert color="primary" %}}

Tablo özelliklerinin uygulanabilmesi için tablonun en az bir satıra sahip olması gerektiğini unutmayın. Bu, [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) ile bir tablo oluştururken, bu biçimlendirmenin [InsertCell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_cell/#default)'ye yapılan ilk çağrıdan sonra veya tabloya ilk satır eklendikten sonra veya düğümler doğrudan DOM'e eklendiğinde yapılması gerektiği anlamına gelir.

{{% /alert %}}

Aşağıdaki resimler Microsoft Word'deki **Table** biçimlendirme özelliklerinin ve Aspose.Words'deki bunlara karşılık gelen özelliklerin bir temsilini göstermektedir.

![formattin-features-table-level-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-1.png)




![formatting-table-options-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-2.png)

Aşağıdaki kod örneği, bir tabloya anahat kenarlığının nasıl uygulanacağını gösterir:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "apply-outline-border.py" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx)'ten indirebilirsiniz.

{{% /alert %}}

Aşağıdaki kod örneği, tüm kenarlıkları etkinleştirilmiş (ızgara) bir tablonun nasıl oluşturulacağını gösterir:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "build-table-with-borders.py" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx)'ten indirebilirsiniz.

{{% /alert %}}

### Satır Düzeyinde Biçimlendirme

**Satır düzeyinde** biçimlendirmesi [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/), [RowFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/row/row_format/) ve [RowCollection](https://reference.aspose.com/words/python-net/aspose.words.tables/rowcollection/) sınıfları kullanılarak kontrol edilebilir.

{{% alert color="primary" %}}

**Row**'in yalnızca **Table**'nin alt düğümü olabileceğini unutmayın. Aynı zamanda **Row**'te formatlamanın uygulanabilmesi için en az bir **Cell** bulunması gerekir.

{{% /alert %}}

Aşağıdaki resimler Microsoft Word'deki **Row** biçimlendirme özelliklerinin ve Aspose.Words'deki bunlara karşılık gelen özelliklerin bir temsilini göstermektedir.

![formatting-row-level-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-3.png)


Aşağıdaki kod örneği, tablo satırı biçimlendirmesinin nasıl değiştirileceğini gösterir:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "modify-row-formatting.py" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx)'ten indirebilirsiniz.

{{% /alert %}}

### Hücre Düzeyinde Biçimlendirme

Hücre düzeyinde biçimlendirme [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/), [CellFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/cell_format/) ve [CellCollection](https://reference.aspose.com/words/python-net/aspose.words.tables/cellcollection/) sınıfları tarafından kontrol edilir.

{{% alert color="primary" %}}

**Cell**'in yalnızca **Row**'nin alt düğümü olabileceğini unutmayın. Aynı zamanda **Cell**'te formatlamanın uygulanabilmesi için en az bir [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) bulunması gerekir.

**Paragraph**'e ek olarak **Cell**'e **Table** de ekleyebilirsiniz.

{{% /alert %}}

Aşağıdaki resimler Microsoft Word'deki **Cell** biçimlendirme özelliklerinin ve Aspose.Words'deki bunlara karşılık gelen özelliklerin bir temsilini göstermektedir.

![formatting-cell-level-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-4.png)




![auto-formatting-cell-level-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-5.png)


Aşağıdaki kod örneği, bir tablo hücresinin biçimlendirmesinin nasıl değiştirileceğini gösterir:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "modify-cell-formatting.py" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx)'ten indirebilirsiniz.

{{% /alert %}}

Aşağıdaki kod örneği, hücre içeriğinin sol/üst/sağ/alt kısmına eklenecek alan miktarının (nokta cinsinden) nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "cell-padding.py" >}}

## Satır Yüksekliklerini Belirtin

Satır yüksekliğini ayarlamanın en basit yolu **DocumentBuilder**'i kullanmaktır. Uygun **RowFormat** özelliklerini kullanarak varsayılan yükseklik ayarını yapabilir veya tablodaki her satır için farklı bir yükseklik uygulayabilirsiniz.

Aspose.Words'te tablo satır yüksekliği şu şekilde kontrol edilir:

- satır yüksekliği özelliği – [Height](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/height/)
- verilen satır için yükseklik kuralı özelliği – [HeightRule](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/height_rule/)

Aynı zamanda her sıra için farklı bir yükseklik ayarlanabilir; bu, masa ayarlarını geniş ölçüde kontrol etmenize olanak tanır.

{{% alert color="primary" %}}

Bir nesnenin yüksekliğini belirlemeye yönelik kural seçenekleri, [HeightRule](https://reference.aspose.com/words/python-net/aspose.words/heightrule/) numaralandırması kullanılarak ayarlanabilir.

{{% /alert %}}

Aşağıdaki kod örneği, tek hücre içeren bir tablonun nasıl oluşturulacağını ve satır biçimlendirmesinin nasıl uygulanacağını gösterir:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "apply-row-formatting.py" >}}

## Tablo ve Hücre Genişliklerini Belirleme

Microsoft Word belgesindeki bir tablo, tabloyu ve tek tek hücreleri yeniden boyutlandırmak için birkaç farklı yol sunar. Bu özellikler, tablonun görünümü ve davranışı üzerinde önemli ölçüde kontrol sağlar; böylece Aspose.Words, Microsoft Word'te olduğu gibi tabloların davranışını destekler.

Tablo öğelerinin, tek tek hücrelerin yanı sıra genel tablonun genişliklerinin nasıl hesaplanacağını etkileyebilecek birkaç farklı özellik sunduğunu bilmek önemlidir:

- Masada tercih edilen genişlik
- Bireysel hücrelerde tercih edilen genişlik
- Masaya otomatik sığdırmaya izin verilmesi

Bu makalede, çeşitli tablo genişliği hesaplama özelliklerinin nasıl çalıştığı ve tablo genişliği hesaplaması üzerinde tam kontrolün nasıl elde edileceği ayrıntılarıyla anlatılmaktadır. Bu
tablo düzeninin beklendiği gibi görünmediği durumlarda bunu bilmek özellikle yararlıdır.

{{% alert color="primary" %}}

Çoğu durumda masa genişliğinden ziyade tercih edilen hücre önerilir. Tercih edilen hücre genişliği, Aspose.Words modelinin yanı sıra DOCX formatı spesifikasyonuna da daha uygundur.

Hücre genişliği aslında DOCX formatı için hesaplanmış bir değerdir. Gerçek hücre genişliği birçok şeye bağlı olabilir. Örneğin, sayfa kenar boşluklarının veya tercih edilen tablo genişliğinin değiştirilmesi, gerçek hücre genişliğini etkileyebilir.

Tercih edilen hücre genişliği, belgede saklanan bir hücre özelliğidir. Hiçbir şeye bağlı değildir ve tabloyu veya hücrenin diğer özelliklerini değiştirdiğinizde değişmez.

{{% /alert %}}

{{% alert color="primary" %}}

Bu makalede açıklanan tüm özellikler ve yöntemler, tabloların Microsoft Word'te nasıl çalıştığıyla ilgilidir. Dolayısıyla çoğu durumda, tablonuzu programlı olarak oluşturuyorsanız ancak istediğiniz tabloyu oluşturmakta zorlanıyorsanız, bunun yerine önce onu Microsoft Word'te görsel olarak oluşturmayı deneyebilir ve ardından biçimlendirme değerlerini uygulamanıza kopyalayabilirsiniz.

{{% /alert %}}

### Tercih Edilen Genişlik Nasıl Kullanılır

Bir tablonun veya tek tek hücrelerin istenen genişliği, bir öğenin sığdırmaya çalıştığı boyut olan tercih edilen genişlik özelliği aracılığıyla tanımlanır. Yani tercih edilen genişlik tablonun tamamı veya tek tek hücreler için belirtilebilir. Bazı durumlarda bu genişliği tam olarak sığdırmak mümkün olmayabilir ancak çoğu durumda gerçek genişlik bu değere yakın olacaktır.

Uygun tercih edilen genişlik türü ve değeri, [PreferredWidth](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidth/) sınıfının yöntemleri kullanılarak ayarlanır:

- otomatik veya "tercih edilen genişlik yok" seçeneğini belirtmek için [Auto](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidthtype/) yöntemi
- yüzde genişliğini belirtmek için [FromPercent](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidthtype/) yöntemi
- nokta cinsinden genişliği belirtmek için [FromPoints](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidthtype/) yöntemi

Aşağıdaki resimler Microsoft Word'teki *tercih edilen genişlik ayarı özelliklerinin* ve Aspose.Words'deki karşılık gelen özelliklerinin bir temsilini göstermektedir.

![formatting-table-properties-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-8.png)

Bu seçeneklerin bir belgedeki gerçek tabloya nasıl uygulandığına dair bir örnek aşağıdaki resimde görülebilir.

![tables-applying-options-python](/words/python-net/applying-formatting/applying-formatting-9.png)

{{% alert color="primary" %}}

Tercih edilen genişliği bir tabloda kullanabilmeniz için önce tablonun en az bir satır içerdiğinden emin olmalısınız. Bunun nedeni, Microsoft Word belgesindeki veya Aspose.Words'de oluşturulan belgedeki bu tür tablo formatının tablonun satırlarında saklanmasıdır.

{{% /alert %}}

#### Tercih Edilen Tabloyu veya Hücre Genişliğini Belirtin

Aspose.Words'te tablo ve hücre genişlikleri, [PreferredWidthType](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidthtype/) numaralandırmasında mevcut seçeneklerle birlikte [Table.PreferredWidth](https://reference.aspose.com/words/python-net/aspose.words.tables/table/preferred_width/) özelliği ve [CellFormat.PreferredWidth](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/preferred_width/) özelliği kullanılarak ayarlanır:

- Tercih edilen genişlik ayarının olmaması durumuna eşdeğer olan **Auto**
- Öğeyi penceredeki veya kapsayıcı boyutundaki kullanılabilir alana göre sığdıran ve mevcut genişlik değiştiğinde değeri yeniden hesaplayan **Percent**
- Nokta cinsinden belirtilen genişliğe sahip bir öğeye karşılık gelen **Points**

{{% alert color="primary" %}}

Varsayılan olarak bir tablo, sayfadaki kullanılabilir alanın %100'üne sığacak şekilde tanımlanabilir. Bu durumda bu, tablonun sol ve sağ sayfa kenar boşlukları arasındaki boşluğu doldurmaya çalışacağı anlamına gelir.

{{% /alert %}}

[Table.PreferredWidth](https://reference.aspose.com/words/python-net/aspose.words.tables/table/preferred_width/) özelliğinin kullanılması, kapsayıcısına göre tercih edilen genişliği ayarlayacaktır: sayfa, metin sütunu veya iç içe geçmiş bir tablo ise dış tablo hücresi.

Aşağıdaki kod örneği, tablonun sayfa genişliğinin %50'sine otomatik sığacak şekilde nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "auto-fit-table-to-page-width.py" >}}

Belirli bir hücrede [CellFormat.PreferredWidth](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/preferred_width/) özelliğinin kullanılması tercih edilen genişliği ayarlayacaktır.

Aşağıdaki kod örneği, tercih edilen farklı genişlik ayarlarının nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "preferred-width-settings.py" >}}

#### Tercih Edilen Genişlik Türünü ve Değerini Bulma

İstediğiniz tablo veya hücrenin tercih edilen genişlik ayrıntılarını bulmak için [Type](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidth/type/) ve [Value](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidth/value/) özelliklerini kullanabilirsiniz.

Aşağıdaki kod örneği, bir tablo hücresinin tercih edilen genişlik türünün nasıl alınacağını gösterir:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "retrieve-preferred-width-type.py" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx)'ten indirebilirsiniz.

{{% /alert %}}

### Otomatik Uyum Nasıl Ayarlanır

[AllowAutoFit](https://reference.aspose.com/words/python-net/aspose.words.tables/table/allow_auto_fit/) özelliği, tablodaki hücrelerin seçilen kritere göre büyüyüp küçülmesine olanak tanır. Örneğin tabloyu sayfa genişliğine sığdırmak için **Pencereye Otomatik Sığdır** seçeneğini, her hücrenin içeriğine göre büyüyüp küçülmesini sağlamak için **İçeriğe Otomatik Sığdır** seçeneğini kullanabilirsiniz.

{{% alert color="primary" %}}

Ayrıca **AllowAutoFit** özelliği, içeriğine otomatik olarak uyan ancak aynı zamanda bir başlangıç genişliğine sahip olan bir hücreyi biçimlendirmek için tercih edilen hücre genişliğiyle birlikte kullanılabilir. Gerekirse hücre genişliği bu genişliği aşabilir.

{{% /alert %}}

Aspose.Words, varsayılan olarak **Pencereye Otomatik Sığdır**'yi kullanarak yeni bir tablo ekler. Tablo mevcut sayfa genişliğine göre boyutlandırılacaktır. Bir tabloyu yeniden boyutlandırmak için [AutoFit](https://reference.aspose.com/words/python-net/aspose.words.tables/table/auto_fit/#autofitbehavior) yöntemini çağırabilirsiniz. Bu yöntem, tabloya hangi otomatik sığdırma türünün uygulandığını belirten bir [AutoFitBehavior](https://reference.aspose.com/words/python-net/aspose.words.tables/autofitbehavior/) numaralandırmasını kabul eder.

Otomatik sığdırma yönteminin aslında tabloya farklı özellikleri aynı anda uygulayan bir kısayol olduğunu bilmek önemlidir. Bunlar aslında tabloya gözlemlenen davranışı veren özelliklerdir. Her otomatik uyum seçeneği için bu özellikleri tartışacağız.

Aşağıdaki kod örneği, her hücreyi içeriğine göre küçültmek veya büyütmek için bir tablonun nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "allow-auto-fit.py" >}}

#### Tabloyu Pencereye Otomatik Sığdır

Bir pencereye otomatik sığdırma bir tabloya uygulandığında, aslında perde arkasında aşağıdaki işlemler gerçekleştirilir:

1. **Table.AllowAutoFit** özelliği, %100'lük bir **Table.PreferredWidth** değeri kullanarak sütunları mevcut içeriğe uyacak şekilde otomatik olarak yeniden boyutlandıracak şekilde etkinleştirildi
2. **CellFormat.PreferredWidth** tüm tablo hücrelerinden kaldırıldı
      {{% alert color="primary" %}}
   Bunun, her hücrenin tercih edilen genişliğinin, mevcut boyutuna ve içeriğine göre uygun değerlere ayarlandığı Microsoft Word davranışından biraz farklı olduğunu unutmayın. Aspose.Words tercih edilen genişliği güncellemez, dolayısıyla bunlar sadece silinir.
      {{% /alert %}}
3. Mevcut tablo içeriği için sütun genişlikleri yeniden hesaplanır; sonuçta mevcut genişliğin tamamını kaplayan bir tablo elde edilir
4. Kullanıcı metni düzenledikçe tablodaki sütunların genişliği otomatik olarak değişir

Aşağıdaki kod örneği, bir tablonun sayfa genişliğine nasıl otomatik olarak sığdırılacağını gösterir:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "auto-fit-table-to-page-width.py" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx)'ten indirebilirsiniz.

{{% /alert %}}

#### Tabloyu İçeriğe Otomatik Sığdır

Tablo içeriğe otomatik olarak sığdırıldığında, aslında perde arkasında aşağıdaki adımlar gerçekleştirilir:

1. **Table.AllowAutoFit** özelliği, her hücreyi içeriğine göre otomatik olarak yeniden boyutlandırmak için etkinleştirildi

2. Tercih edilen tablo genişliği **Table.PreferredWidth**'ten kaldırılır, her tablo hücresi için **CellFormat.PreferredWidth** kaldırılır
      {{% alert color="primary" %}}

   Bu otomatik sığdırma seçeneğinin, tıpkı Microsoft Word'te olduğu gibi, hücrelerden tercih edilen genişliği kaldırdığını unutmayın. Sütun boyutlarını korumak ve içeriğe sığacak şekilde sütunları artırmak veya azaltmak istiyorsanız, otomatik sığdırma kısayolunu kullanmak yerine **Table.AllowAutoFit** özelliğini kendi başına **True** olarak ayarlamalısınız.{{% /alert %}}

3. Sütun genişlikleri mevcut tablo içeriği için yeniden hesaplanır; sonuçta, kullanıcı metni düzenledikçe sütun genişliklerinin ve tüm tablonun genişliğinin içeriğe en iyi uyacak şekilde otomatik olarak yeniden boyutlandırıldığı bir tablo elde edilir

Aşağıdaki kod örneği, bir tablonun içeriğine nasıl otomatik olarak sığdırılacağını gösterir:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "auto-fit-table-to-contents.py" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx)'ten indirebilirsiniz.

{{% /alert %}}

#### Tabloda Otomatik Sığdırmayı Devre Dışı Bırakın ve Sabit Sütun Genişliklerini Kullanın

Bir tabloda otomatik sığdırma devre dışıysa ve bunun yerine sabit sütun genişlikleri kullanılıyorsa aşağıdaki adımlar gerçekleştirilir:

1. **Table.AllowAutoFit** özelliği devre dışı bırakıldı, böylece sütunlar içeriklerine göre büyüyüp küçülmüyor
2. Tüm tablonun tercih edilen genişliği **Table.PreferredWidth**'ten kaldırılır, **CellFormat.PreferredWidth** tüm tablo hücrelerinden kaldırılır
3. Sonuç, sütun genişlikleri [CellFormat.Width](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/width/) özelliği tarafından belirlenen ve kullanıcı metin girdiğinde veya sayfa yeniden boyutlandırıldığında sütunları otomatik olarak yeniden boyutlandırılmayan bir tablodur

{{% alert color="primary" %}}

**CellFormat.Width** için herhangi bir genişlik belirtilmezse, bir inçlik (72 punto) varsayılan değerin kullanılacağını unutmayın.

{{% /alert %}}

Aşağıdaki kod örneği, belirtilen tablo için otomatik sığdırmanın nasıl devre dışı bırakılacağını ve sabit genişliğin nasıl etkinleştirileceğini gösterir:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "auto-fit-table-to-fixed-column-widths.py" >}}

{{% alert color="primary" %}}

Bu örneğin örnek dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx)'ten indirebilirsiniz.

{{% /alert %}}

### Hücre Genişliğini Hesaplarken Öncelik Sırası

Aspose.Words, kullanıcıların bir tablonun veya hücrenin genişliğini [CellFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/) de dahil olmak üzere birden fazla nesne aracılığıyla tanımlamasına olanak tanır; [Width](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/width/q) özelliği çoğunlukla önceki sürümlerden kalmıştır, ancak yine de hücre genişliğini ayarlamayı basitleştirmek için kullanışlıdır.

**CellFormat.Width** özelliğinin, tabloda zaten mevcut olan diğer genişlik özelliklerine bağlı olarak farklı şekilde çalıştığını bilmek önemlidir.

Aspose.Words, hücre genişliklerini hesaplamak için aşağıdaki sırayı kullanır:

|  Emir |  Mülk |  Tanım |
|  -----  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  1      |  [AllowAutoFit](https://reference.aspose.com/words/python-net/aspose.words.tables/table/allow_auto_fit/) belirlendi |  **AutoFit** etkinse:<br>- tablo, içeriğe uyum sağlamak için tercih edilen genişliği aşacak şekilde büyüyebilir; genellikle tercih edilen genişliğin altına küçülmez<br>- **CellFormat.Width** değerindeki herhangi bir değişiklik göz ardı edilir ve hücre bunun yerine içeriğine sığar |
|  2      |  **Points** veya **Percent** değerine sahip [PreferredWidthType](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidthtype/) |  **CellFormat.Width** göz ardı ediliyor |
|  3      |  **Auto** değerine sahip [PreferredWidthType](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidthtype/) |  **CellFormat.Width**'teki değer kopyalanır ve hücrenin tercih edilen genişliği (nokta olarak) olur |

{{% alert color="primary" %}}

Genişlik özelliğinde yapılan değişiklikler tercih edilen genişlikte güncellenmez ve bunun yerine tercih edilen genişliğe uygulanması gerekir.

{{% /alert %}}

{{% alert color="primary" %}}

Sabit tablo düzeni oluştururken hücre genişliğini belirtin. Genişliği olmayan bir hücre DOC formatında kaydedilemez. DOCX gibi DOC dışındaki belge formatları, prensip olarak, hücrelerin sabit bir tablo düzeninde genişliği olmayan şekilde kaydedilmesine olanak tanır.

{{% /alert %}}

## Hücreler Arasındaki Boşluğa İzin Ver

Microsoft Word'teki "Hücre aralığı" seçeneğine benzer şekilde tablo hücreleri arasında herhangi bir ek boşluk alabilir veya ayarlayabilirsiniz. Bu, [AllowCellSpacing](https://reference.aspose.com/words/python-net/aspose.words.tables/table/allow_cell_spacing/) özelliği kullanılarak yapılabilir.

Bu seçeneklerin bir belgedeki gerçek tabloya nasıl uygulandığına dair bir örnek aşağıdaki resimde görülebilir.

<img src="/words/python-net/applying-formatting/applying-formatting-10.png" alt="biçimlendirme-hücreler arası temeller-aspose-words-python" style="width:500px"/>

Aşağıdaki kod örneği, hücreler arasındaki boşluğun nasıl ayarlanacağını gösterir:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "allow-cell-spacing.py" >}}

## Kenarlık ve Gölgelendirme Uygulamak

Kenarlıklar ve gölgeleme, [Table.SetBorder](https://reference.aspose.com/words/python-net/aspose.words.tables/table/set_border/), [Table.SetBorders](https://reference.aspose.com/words/python-net/aspose.words.tables/table/set_borders/) ve [Table.SetShading](https://reference.aspose.com/words/python-net/aspose.words.tables/table/set_shading/) kullanılarak tablonun tamamına veya [CellFormat.Borders](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/borders/) ve [CellFormat.Shading](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/shading/) kullanılarak yalnızca belirli hücrelere uygulanabilir. Ayrıca satır sınırları [RowFormat.Borders](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/borders/) kullanılarak ayarlanabilir ancak gölgelendirme bu şekilde uygulanamaz.

Aşağıdaki resimler Microsoft Word'teki kenarlık ve gölge ayarlarını ve Aspose.Words'deki bunlara karşılık gelen özellikleri göstermektedir.

![formatting-border-line-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-6.png)

![formatting-cell-color-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-7.png)

Aşağıdaki kod örneği, bir tablonun ve hücrenin farklı kenarlıklar ve gölgelerle nasıl biçimlendirileceğini gösterir:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "format-table-and-cell-with-different-borders.py" >}}