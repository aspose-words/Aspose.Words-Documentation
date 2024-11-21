---
title: Tablo Biçimlendirme Java
second_title: Aspose.Words için Java
articleTitle: Tablo Biçimlendirme Uygula
linktitle: Tablo Biçimlendirme Uygula
description: "Ayrıntılarımda tablo biçimlendirme. Her tablonun parçalarını biçimlendirmek için Java kullanın."
type: docs
weight: 70
url: /tr/java/applying-formatting/
timestamp: 2024-01-27-14-07-04
---

Bir tablodaki her öğe farklı bir biçimlendirme ile uygulanabilir. Örneğin tablo biçimlendirme tüm tabloya uygulanacak, satır biçimlendirmesi yalnızca bazı satırlar için, hücre biçimlendirmesi yalnızca bazı hücreler için uygulanacaktır.

Aspose.Words bir tabloya biçimlendirme almak ve uygulamak için zengin bir API sağlar. Biçimlendirme ayarlamak için [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/) ve [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/)'düğümleri kullanabilirsiniz.

Bu makalede farklı tablo düğümlerine biçimlendirme uygulamak ve hangi tablo biçimlendirme ayarlarını Aspose.Words destekler nasıl bu konuda konuşacağız.

## Farklı Düğümlerde Biçimlendirme Uygula

Bu bölümde çeşitli tablo düğümleri için biçimlendirme uygulamayı inceleyeceğiz.

### Masa Düzeyi Biçimlendirme

Bir tabloya biçimlendirme uygulamak için karşılık gelen **Table** düğümünde bulunan özellikleri [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/) ve [TableCollection](https://reference.aspose.com/words/java/com.aspose.words/tablecollection/) sınıflarını kullanarak kullanabilirsiniz.

{{% alert color="primary" %}}

Tablo özelliklerinin uygulanabilmesi için tablonun en az bir satırı olmalı dikkat edin. Bu şu anlama gelir ki bir tablo oluştururken [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) ile, bu biçimlendirme ilk çağrı [InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell()) yapıldıktan sonra veya ilk satır tabloya eklendikten sonra veya düğümler doğrudan DOM'ye eklendikten sonra yapılmalıdır.

{{% /alert %}}

Aşağıdaki resimler, **Table** biçimlendirme özelliklerinin Microsoft Word 'da bir temsilini ve bunların karşılık gelen özellikleri Aspose.Words 'de gösterir.

![apply-formatting-to-table-level-aspose-words-java](applying-formatting-to-table-row-and-cell-1.png)

![apply-formatting-to-table-level-aspose-words-java](applying-formatting-to-table-row-and-cell-2.png)

Aşağıdaki kod örneği bir tabloya uygulama kenarlığı nasıl uygulanacağını göstermektedir:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "apply-outline-border.java" >}}

Aşağıdaki kod örneği, tüm kenarları etkinleştirilmiş (ızgara) bir tablo oluşturmayı gösterir:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "build-table-with-borders.java" >}}

### Satır Düzey Biçimlendirme

Sıra düzeyinde** biçimlendirme [Row](https://reference.aspose.com/words/java/com.aspose.words/row/), [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/), ve [RowCollection](https://reference.aspose.com/words/java/com.aspose.words/rowcollection/) sınıflarıyla kontrol edilebilir.

{{% alert color="primary" %}}

Not edin ki, bir **Row** yalnızca bir **Table**'in alt düğümü olabilir. Aynı zamanda, en az bir tane **Cell** **Row**'da olmalı ki ona biçimlendirme uygulanabilsin.

{{% /alert %}}

Aşağıdaki resimler **Row** biçimlendirme özelliklerinin temsilini Microsoft Word'da ve bunların karşılık gelen özellikleri Aspose.Words'da göstermektedir.

![apply-formatting-to-row-level-aspose-words-java](applying-formatting-to-table-row-and-cell-3.png)

Aşağıdaki kod örneği tablo satırı biçimlendirme değiştirme nasıl gösterir:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "modify-row-formatting.java" >}}

### Hücre Düzey Biçimlendirme

Hücre düzeyinde biçimlendirme [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/), [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) ve [CellCollection](https://reference.aspose.com/words/java/com.aspose.words/cellcollection/) sınıfları tarafından kontrol edilir.

{{% alert color="primary" %}}

Not edin bir **Cell** yalnızca bir **Row**'in alt düğümü olabilir. Aynı zamanda bir tane [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) en az bir tane olmalı **Cell** böylece biçimlendirme ona uygulanabilir.

**Paragraph**'a ek olarak, bir **Table** de bir **Cell**'ye yerleştirebilirsiniz.

{{% /alert %}}

Aşağıdaki resimler, **Cell** biçimlendirme özellikleri ile ilgili bir temsil ve bunların karşılık gelen özellikleri Aspose.Words ve Microsoft Word gösteriyor.

![apply-formatting-to-cell-level-aspose-words-java](applying-formatting-to-table-row-and-cell-4.png)

![apply-auto-formatting-to-row-level-aspose-words-java](applying-formatting-to-table-row-and-cell-5.png)

Aşağıdaki kod örneğinde bir tablo hücresinin biçimlendirmesi nasıl değiştirilir, gösterilmektedir:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "modify-cell-formatting.java" >}}

Aşağıdaki kod örneğinde, hücrenin içeriğinin sol/üst/sağ/altı kenarına eklenecek boşluk miktarını (noktalar cinsinden) nasıl ayarlayacağınız gösterilmiştir:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "cell-padding.java" >}}

## Sütun Yüksekliklerini Belirtme

Sütun yüksekliğini ayarlamanın en basit yolu **DocumentBuilder**'u kullanmaktır. Uygun **RowFormat** özelliklerini kullanarak, tabloya ait varsayılan yükseklik ayarını ya da tablodaki her satır için farklı bir yükseklik uygulayabilirsiniz.

Tablo satırı yüksekliği Aspose.Words tarafından kontrol edilir:

- satır yüksekliği özelliği [Height](https://reference.aspose.com/words/java/com.aspose.words/row/format#Height)
- verilen satır için yükseklik kuralı özelliği [HeightRule](https://reference.aspose.com/words/java/com.aspose.words/row/format#HeightRule)

Aynı zamanda her satır için farklı bir yükseklik ayarlanabilir – bu sizi tablolarınızın ayarlarını büyük ölçüde kontrol etmenizi sağlar.

{{% alert color="primary" %}}

Bir nesnenin yüksekliğini belirtmek için kullanılan kural seçenekleri, [HeightRule](https://reference.aspose.com/words/java/com.aspose.words/heightrule/) alanlarıyla birlikte ayarlanabilir.

{{% /alert %}}

Aşağıdaki kod örneği, tek bir hücre içeren bir tablo oluşturma ve satır biçimlendirme uygulamasını göstermektedir:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "apply-row-formatting.java" >}}

## Tablo ve Hücre Genişliklerini Belirtin

Bir belge içinde bir Microsoft Word tablosu, tabloyu ve bireysel hücreleri yeniden boyutlandırmanın birkaç farklı yolunu sağlar. Bu özellikler, tablonun görünüşünü ve davranışını kontrol etmek için büyük ölçüde izin verir, o yüzden Aspose.Words tabloların davranışını destekler, örneğin Microsoft Word'de olduğu gibi.

Bu önemli bir nokta çünkü tablo öğelerinin hem genel tablo genişliği hem de bireysel hücrelerin nasıl hesaplandığı üzerinde etkili olabilecek birkaç farklı özelliği vardır:

- Masadaki tercih edilen genişlik
- Tek tek hücrelerin tercih edilen genişliği
- Masaya otomatik olarak sığdırma izin ver

Bu makale çeşitli tablo genişliği hesaplama özelliklerinin nasıl çalıştığını ve tablo genişliği hesaplamasının tam kontrolünü nasıl elde edileceğini ayrıntılarıyla anlatır. Bunun
especially useful to know in such cases where the table layout does not appear as expected.

{{% alert color="primary" %}}

Çoğu durumda, tercih edilen hücre, tablo genişliğinden daha çok tavsiye edilir. Tercih edilen hücre genişliği, Aspose.Words modeli ile birlikte DOCX formatı spesifikasyonuna daha uygundur.

Hücre genişliği aslında DOCX formatı için bir hesaplanmış değerdir. Gerçek hücre genişliği birçok şeyden bağımlı olabilir. Örneğin, sayfa kenar boşluklarını veya tercih edilen tablo genişliğini değiştirmek gerçek hücre genişliğini etkileyebilir.

Tercih edilen hücre genişliği, dokümanda saklanan bir hücre özelliğidir. Hiçbir şeye bağlı değildir ve hücrenin diğer özelliklerini değiştirdiğinizde değişmez.

{{% /alert %}}

{{% alert color="primary" %}}

Bu makalede açıklanan tüm özellikler ve yöntemler, tabloların nasıl çalıştığını Microsoft Word'e bağlar. Bu nedenle çoğu durumda, programatik olarak tablo oluşturuyorsanız ancak istediğiniz tabloyu oluşturmak zor geliyorsa, ilk önce Microsoft Word içinde görsel olarak oluşturmaya çalışabilir ve ardından basitçe biçimlendirme değerlerini uygulamanıza kopyalayabilirsiniz.

{{% /alert %}}

### Tercih Edilen Genişlik Kullanımı Nasıl Yapılır?

Bir masanın veya bireysel hücrelerin arzu edilen genişliği tercih edilen genişlik özelliği aracılığıyla tanımlanır ve bir öğenin uyum sağlamaya çalıştığı boyuttur. Böylece tercih edilen genişlik tüm tablo için veya bireysel hücreler için belirtilebilir. Bazı durumlarda bu genişliği tam olarak uydurmak mümkün olmayabilir ama gerçek genişlik çoğu durumda bu değere yakın olacaktır.

Uygun tercih edilen genişlik türü ve değeri [PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/) sınıfının yöntemleri kullanılarak ayarlanır":

- [Auto](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#AUTO) alanı belirtmek için otomatik veya "tercih edilen genişlik yok"
- [FromPercent](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#fromPercent-double) yöntemini yüzde genişliği belirtmek için kullanın
- [FromPoints](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#fromPoints-double) yöntemini noktalarda genişliği belirtmek için kullanın

Aşağıdaki resimler, Microsoft Word'deki *tercih edilen genişlik ayarı özelliklerinin* bir gösterimini ve bunların karşılık gelen özellikleri Aspose.Words 'da gösterir.

![formatting-table-properties-aspose-words-java](applying-formatting-8.png)

Bu seçeneklerin gerçek bir tabloya nasıl uygulandığına ilişkin bir örnek, aşağıdaki resimde görülebilir.

![table-applied-options-java](applying-formatting-9.png)

{{% alert color="primary" %}}

Bir tabloda tercih edilen genişliği kullanmadan önce, tablo en az bir satır içerdiğinden emin olmalısınız. Bu, böyle bir tablo biçimlendirme bir Microsoft Word belgesi veya bir belge Aspose.Words oluşturulmuş satırlarda depolandığı için.

{{% /alert %}}

#### Tercih Edilen Tablo veya Hücre Genişliğini Belirtin

Aspose.Wordsde tablo ve hücre genişlikleri, [Table.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/table/#getPreferredWidth) özelliğini ve [CellFormat.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getPreferredWidth) özelliğini kullanarak ayarlanır, [PreferredWidthType](https://reference.aspose.com/words/java/com.aspose.words/preferredwidthtype/) numaralandırmasında seçenekler mevcuttur:

- **Auto**, tercih edilen genişlik ayarlanmamış eşdeğer olarak
- **Percent** öğeyi pencere veya kapsayıcı boyutuna göre boşluğa yerleştirir ve kullanılabilir genişlik değiştiğinde değeri yeniden hesaplar
- **Points**, belirtilen noktada bir öğeye karşılık gelir

{{% alert color="primary" %}}

Varsayılan olarak bir tablo sayfanın mevcut alanının %100'üne yerleştirilebilir. Bu durumda, bu demek oluyor ki tablo sol ve sağ sayfa kenar boşlukları arasında kalan alanı almaya çalışacak.

{{% /alert %}}

[Table.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/table/#getPreferredWidth) özelliğini kullanmak onun tercih edilen genişliğini kapsayıcıya göre ayarlayacaktır: sayfa, metin sütunu veya dış tablo hücresi eğer iç içe geçmiş bir tablo ise.

Aşağıdaki kod örneği, tabloyu sayfa genişliğinin %50'sine otomatik olarak uyum sağlaması için nasıl ayarlanacağını göstermektedir:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-page-width.java" >}}

Bir hücrede verilen [CellFormat.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getPreferredWidth) özelliğini kullanmak, tercih edilen genişliğini ayarlayacaktır.

Aşağıdaki kod örneği farklı tercih edilen genişlik ayarlarını nasıl ayarlayacağınızı göstermektedir:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "preferred-width-settings.java" >}}

#### Tercih Edilen Genişlik Türünü ve Değeri Bul

İstediğiniz tablo veya hücrenin tercih edilen genişlik ayrıntılarını bulmak için [Type](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#getType) ve [Value](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#getValue) özelliklerini kullanabilirsiniz.

Aşağıdaki kod örneği bir tablodaki hücre için tercih edilen genişlik türünü nasıl alacağını göstermektedir:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "retrieve-preferred-width-type.java" >}}

### Nasıl Ayarlayın Autofit

The [AllowAutoFit](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowAutoFit) özelliği bir tablodaki hücrelerin seçilen bir kriterle büyümesine ve küçülmesine izin verir. Örneğin, tabloyu sayfanın genişliğine sığacak şekilde kullanmak için **Pencereye Otomatik Uyarlama** seçeneğini ve içeriğine göre büyüyüp küçülebilecek şekilde her hücrenin izin vermek için **İçeriği Otogörmeye Uyarlama** seçeneğini kullanabilirsiniz.

{{% alert color="primary" %}}

Ayrıca, **AllowAutoFit** özelliği bir hücre genişliğinin tercih edildiği ile birlikte otomatik olarak içeriği sığdıracak bir hücrenin biçimlendirilmesinde kullanılabilir, ancak ayrıca ilk genişliği vardır. Gerekirse hücre genişliği sonra bu genişlikten büyüyebilir.

{{% /alert %}}

Varsayılan olarak Aspose.Words, **Pencereye Otomatik Uyarlama** kullanarak yeni bir tablo ekler. Masa, mevcut sayfa genişliğine göre boyutlandırılacaktır. Bir tabloyu yeniden boyutlandırmak için, [AutoFit](https://reference.aspose.com/words/java/com.aspose.words/table/#autoFit-int) yöntemini çağırabilirsiniz. Bu yöntem, tabloya uygulanacak otomatik uyum türünü belirtmek için bir [AutoFitBehavior](https://reference.aspose.com/words/java/com.aspose.words/autofitbehavior/) numaralandırması kabul eder.

Önemli olan, otomatik uyum yönteminin aslında aynı anda tabloya farklı özellikler uygulayan bir kısayol olduğunu bilmektir. Bu özellikleri, aslında tabloya gözlemlenen davranışı veren özellikler. Bu özellikleri her autofit seçeneği için tartışacağız.

Aşağıdaki kod örneği, içeriğine göre her bir hücrenin küçülmesi veya büyümesi için bir tablo ayarlamayı gösterir:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "allow-auto-fit.java" >}}

Biz aşağıdaki tablonun çeşitli otomatik uyum ayarlarını göstermek için kullanılacağını kullanırız.

<img src="how-to-apply-different-autofit-settings-to-a-table-1.png" alt="apply-different-autofit-settings-to-a-table-aspose-words-java" style="width:500px"/>

#### Pencereden Tabloya Otomatik Uyarlama

Otomatik olarak bir pencereye yerleştirme bir tabloya uygulandığında, aşağıdaki işlemler aslında arka planda gerçekleştirilir:

1. **Table.AllowAutoFit** özelliği otomatik olarak sütunları mevcut içeriğe uyacak şekilde yeniden boyutlandırmak için %100 değerini kullanan bir **Table.PreferredWidth**
2. **CellFormat.PreferredWidth** tüm tablo hücrelerinden kaldırılır
      {{% alert color="primary" %}}
   Bu, Microsoft Word davranışından biraz farklıdır, burada her hücrenin tercih edilen genişliği mevcut boyutlarına ve içeriğine göre uygun değerlere ayarlanır. Aspose.Words tercih edilen genişliği güncellemez, bu yüzden sadece temizlenirler.
      {{% /alert %}}
3. Sütun genişlikleri, mevcut tablo içeriği için yeniden hesaplanır - sonuç bir tablo işgal eder tüm kullanılabilir genişlik
4. Masa içindeki sütunların genişliği kullanıcı metin düzenlerken otomatik olarak değişir

Aşağıdaki kod örneği, bir tablonun sayfa genişliğine nasıl uyum sağladığını göstermektedir:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-table-to-page-width.java" >}}

Yukarıdaki tabloya bu seçeneklerin nasıl uygulandığını gösteren bir örnek, aşağıdaki resmin altında görülebilir.

<img src="how-to-apply-different-autofit-settings-to-a-table-2.png" alt="autofit-table-aspose-words-java" style="width:500px"/>

#### İçeriği İçerecek Tabloya Otomatik Uyma

Tablo otomatik olarak uydurulduğunda aşağıdaki adımlar aslında arka planda gerçekleştirilir:

1. The **Table.AllowAutoFit** özelliği içeriğine göre her bir hücreyi otomatik olarak yeniden boyutlandırmak için etkinleştirilmiştir

2. Tercih edilen tablo genişliği kaldırılır **Table.PreferredWidth**, her tablo hücresi için **CellFormat.PreferredWidth** kaldırılır
      {{% alert color="primary" %}}

   Bu otomatik uydurma seçeneğinin tercih edilen genişlikleri hücrelerden kaldırdığını not edin, tıpkı Microsoft Word'te olduğu gibi. Sütun boyutlarını korumak ve içeriğe uyacak şekilde sütunları artırmak veya azaltmak istiyorsanız, **Table.AllowAutoFit** özelliğini otomatik olarak ayarlamak yerine kendi başına **True** olarak ayarlamanız gerekir. {{% /alert %}}

3. Sütun genişlikleri, geçerli tablo içeriği için yeniden hesaplanır – sonuç bir tablodur, sütun genişlikleri ve tüm tablo genişliği otomatik olarak içeriğe en iyi şekilde uyacak şekilde yeniden boyutlandırılır kullanıcı metni düzenlerken

Aşağıdaki kod örneğinde bir tabloyu içeriğine nasıl otomatik olarak uydurduğumu gösterir:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-table-to-contents.java" >}}

Bu seçeneklerin yukarıdaki tabloya nasıl uygulandığının bir örneği, aşağıda resimde görülebilir.

<img src="how-to-apply-different-autofit-settings-to-a-table-3.png" alt="resize-column-autofit-settings-aspose-words-java" style="width:500px"/>

#### Tablo'da Otomatik Uyarlamayı Kullanmayın ve Sabit Sütun Genişliklerini Kullanın

Bir tablo otomatik uyum yok ve sabit sütun genişlikleri yerine kullanılırsa, aşağıdaki adımlar gerçekleştirilir:

1. **Table.AllowAutoFit** özelliği devre dışı bırakıldığından nedenle sütunlar içeriğine göre büyümüyor veya küçülmüyor
2. Tam tablo genişliğinin tercih edilen genişlik kaldırıldı **Table.PreferredWidth**, **CellFormat.PreferredWidth** tüm tablo hücrelerinden kaldırıldı
3. Sonuç bir tablodur ve satır genişlikleri [CellFormat.Width](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getWidth) özelliğine göre belirlenir ve kullanıcı metin girdiğinde veya sayfa yeniden boyutlandırıldığında sütunların otomatik olarak yeniden boyutlendirilmediği

{{% alert color="primary" %}}

Eğer **CellFormat.Width** için bir genişlik belirtilmezse, varsayılan değerin bir inç (72 noktalar) kullanıldığına dikkat edin.

{{% /alert %}}

Aşağıdaki kod örneği belirtilen tablo için otomatik uyum ve sabit genişlik etkinleştirmeyi nasıl devre dışı bırakacağınızı gösterir:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-table-to-fixed-column-widths.java" >}}

Bu seçeneklerin yukarıdaki tabloya nasıl uygulandığına ilişkin bir örnek, aşağıdaki resimde görülebilir.

<img src="how-to-apply-different-autofit-settings-to-a-table-4.png" alt="disable-autofit-settings-to-a-table-aspose-words-java" style="width:500px"/>

### Hücre Genişliğinin Hesaplanmasında Öncelik Sırası

Aspose.Words kullanıcıların bir tablonun veya hücrenin genişliğini birden fazla nesne aracılığıyla tanımlamasına izin verir, [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) dahil – [Width](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getWidth) özelliği çoğunlukla önceki sürümlerden miras kalmıştır ancak hücre genişliğini basitleştirmek için hala yararlıdır.

Önemli bir nokta, **CellFormat.Width** özelliğinin diğer genişlik özelliklerinden hangilerinin zaten tablo içinde bulunduğuna bağlı olarak farklı şekilde çalıştığını bilmektir.

Aspose.Words aşağıdaki sırayı hücre genişliklerini hesaplamak için kullanır:

| Sipariş | Mülkiyet | Tanım |
| ----- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| 1 | [AllowAutoFit](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowAutoFit) belirlenir | Eğer **AutoFit** etkinleştirilirse: <br>- tablo, içeriği barındırmak için tercih edilen genişliği aşabilir - genellikle tercih edilen genişlikten daha küçük bir boyuta küçülmez <br>- **CellFormat.Width** değerindeki herhangi bir değişiklik göz ardı edilir ve hücre içeriğine göre uyum sağlar |
| 2 | [PreferredWidthType](https://reference.aspose.com/words/java/com.aspose.words/preferredwidthtype/) bir değerle, **Points** ya da **Percent** | **CellFormat.Width** yoksayılır |
| 3 | [PreferredWidthType](https://reference.aspose.com/words/java/com.aspose.words/preferredwidthtype/) ile bir değer **Auto** | Bu değer, **CellFormat.Width** 'dan kopyalanır ve hücre'nin tercih edilen genişliği (noktalarda) haline gelir |

{{% alert color="primary" %}}

Genişlik özelliğine yapılan tüm değişiklikler tercih edilen genişlikte güncellenmez ve bunun yerine tercih edilen genişliğe uygulanır.

{{% /alert %}}

{{% alert color="primary" %}}

Sabit tablo düzeni oluştururken hücre genişliğini belirtin. Genişliği olmayan bir hücre, DOC formatında kaydedilemez. DOC dışındaki dosya biçimleri, örneğin DOCX, bir sabit tablo düzeninde genişliği olmayan hücreleri kaydetmeyi ilkelerince sağlar.

{{% /alert %}}

## Hücreler Arasında Boşluk İçin İzin Ver

Tablo hücreleri arasındaki ekstra boşluğu ayarlayabilir veya alabilirsiniz, tıpkı Microsoft Word'deki 'Cell spacing' seçeneğine benzer şekilde. Bunun [AllowCellSpacing](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowCellSpacing) özelliğini kullanarak yapılabilir.

Bu seçeneklerin bir gerçek tabloya nasıl uygulandığına dair bir örnek, aşağıdaki resimde görülebilir.

<img src="applying-formatting-10.png" alt="formatting-spacing-between-cells-aspose-words-java" style="width:500px"/>

Aşağıdaki kod örneği hücreler arasındaki boşluk ayarlamayı nasıl yapacağınızı göstermektedir:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "allow-cell-spacing.java" >}}

## Sınırları ve Gölgelendirmeyi Uygula

Sınırlar ve gölgeleme, tüm tabloya [Table.SetBorder](https://reference.aspose.com/words/java/com.aspose.words/table/#setBorder-int-int-double-java.awt.Color-boolean), [Table.SetBorders](https://reference.aspose.com/words/java/com.aspose.words/table/#setBorders-int-double-java.awt.Color) ve [Table.SetShading](https://reference.aspose.com/words/java/com.aspose.words/table/#setShading-int-java.awt.Color-java.awt.Color) kullanılarak uygulanabilir ya da yalnızca belirli hücrelere [CellFormat.Borders](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getBorders) ve [CellFormat.Shading](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getShading) kullanılarak uygulanabilinir. Ayrıca, satır kenarları [RowFormat.Borders](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getBorders) kullanılarak ayarlanabilir ancak bu şekilde gölgelendirme uygulanamaz.

Aşağıdaki resimler, Microsoft Word'deki kenarlık ve gölge ayarlarını ve bunların karşılık gelen özellikleri Aspose.Words 'de gösterir.

![apply-borders-shading-aspose-words-java-1](applying-formatting-to-table-row-and-cell-6.png)


![apply-borders-shading-aspose-words-java-2](applying-formatting-to-table-row-and-cell-7.png)


Aşağıdaki kod örneği farklı kenarlık ve gölgelendirmelerle bir tablo ve hücre nasıl biçimlendirileceğini gösterir:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "format-table-and-cell-with-different-borders.java" >}}
