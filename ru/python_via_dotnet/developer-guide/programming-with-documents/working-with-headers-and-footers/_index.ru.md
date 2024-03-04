---
title: Работа с верхними и нижними колонтитулами
second_title: Aspose.Words для Python via .NET
articleTitle: Работа с верхними и нижними колонтитулами
linktitle: Работа с верхними и нижними колонтитулами
description: "Создавайте, управляйте и удаляйте верхние и нижние колонтитулы в документе с помощью Python."
type: docs
weight: 150
url: /ru/python-net/working-with-headers-and-footers/
---

Aspose.Words позволяет пользователям работать с верхними и нижними колонтитулами в документе. Заголовок — это текст, который размещается вверху страницы, а нижний колонтитул — это текст внизу страницы. Обычно эти области используются для вставки информации, которая должна повторяться на всех или некоторых страницах документа, например номеров страниц, даты создания, информации о компании и т.д.

## Создайте верхние или нижние колонтитулы с помощью DocumentBuilder

Если вы хотите добавить верхний или нижний колонтитул документа программно, самый простой способ — использовать для этого класс [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/).

В следующем примере кода показано, как добавить верхний и нижний колонтитулы для страниц документа:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "create-header-footer.py" >}}

## Укажите параметры верхнего или нижнего колонтитула

Когда вы добавляете верхний или нижний колонтитул в документ, вы можете установить некоторые дополнительные свойства. Aspose.Words предоставляет пользователям классы [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/) и [HeaderFooterCollection](https://reference.aspose.com/words/python-net/aspose.words/headerfootercollection/), а также перечисление [HeaderFooterType](https://reference.aspose.com/words/python-net/aspose.words/headerfootertype/), которые дают вам больше контроля над процессом настройки верхнего и нижнего колонтитула.

### Укажите тип верхнего или нижнего колонтитула

Вы можете указать три разных типа верхнего колонтитула и три разных типа нижнего колонтитула для одного документа:

1. Верхний и/или нижний колонтитул первой страницы
2. Верхний и/или нижний колонтитул для четных страниц
3. Верхний и/или нижний колонтитул для нечетных страниц

В следующем примере кода показано, как добавить заголовок для нечетных страниц документа:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "header-footer-type.py" >}}

### Укажите, следует ли отображать разные верхние или нижние колонтитулы для первой страницы

Как было сказано выше, вы также можете установить другой верхний или нижний колонтитул для первой страницы. Для этого вам необходимо установить флаг [different_first_page_header_footer](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/different_first_page_header_footer/) на `true`, а затем указать значение **HeaderFirst** или **FooterFirst**.

В следующем примере кода показано, как установить заголовок только для первой страницы:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "different-first-page.py" >}}

### Укажите, следует ли отображать разные верхние или нижние колонтитулы для нечетных или четных страниц

Далее вам нужно будет установить разные верхние или нижние колонтитулы для нечетных и четных страниц документа. Для этого нужно установить флаг [odd_and_even_pages_header_footer](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/odd_and_even_pages_header_footer/) на `true` и затем указать значения **HeaderPrimary** и **HeaderEven** или **FooterPrimary** и **FooterEven**.

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "odd-even-pages.py" >}}

### Вставьте абсолютно позиционированное изображение в заголовок

Чтобы поместить изображение в верхний или нижний колонтитул, используйте тип верхнего колонтитула **HeaderPrimary** или тип нижнего колонтитула **FooterPrimary** и метод [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/).

В следующем примере кода показано, как добавить изображение в заголовок:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "insert-image.py" >}}

### Установите свойства шрифта и абзаца для текста верхнего или нижнего колонтитула

С помощью Aspose.Words вы можете установить свойства шрифта и абзаца, использовать тип заголовка **HeaderPrimary** или тип нижнего колонтитула **FooterPrimary**, а также методы и свойства для работы со шрифтами и абзацами, которые вы используете для тела документа.

В следующем примере кода показано, как задать для текста в заголовке шрифт Arial, жирный шрифт, размер 14 и выравнивание по центру:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "font-props.py" >}}

### Вставка номеров страниц в верхний или нижний колонтитул

При необходимости вы можете добавить номера страниц в верхний или нижний колонтитул. Для этого используйте тип заголовка **HeaderPrimary** или тип нижнего колонтитула **FooterPrimary** и метод [insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/), чтобы добавить необходимое поле.

В следующем примере кода показано, как добавить номера страниц в нижний колонтитул справа:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "page-numbers.py" >}}

### Используйте верхние или нижние колонтитулы, определенные в предыдущем разделе

Если вам нужно скопировать верхний или нижний колонтитул из предыдущего раздела, вы тоже можете это сделать.

В следующем примере кода показано, как скопировать верхний или нижний колонтитул из предыдущего раздела:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "copy-headers-footers-from-previous-section.py" >}}

### Обеспечьте внешний вид верхнего или нижнего колонтитула при использовании различных ориентаций и размеров страниц

Aspose.Words позволяет обеспечить внешний вид верхнего или нижнего колонтитула при использовании разных ориентаций и размеров страницы.

В следующем примере показано, как это сделать:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "link-to-previous-header-footer.py" >}}

## Как удалить только верхние или только нижние колонтитулы

Каждый раздел документа может иметь до трех верхних и до трех нижних колонтитулов (для первой, четной и нечетной страниц). Если вы хотите удалить все верхние или все нижние колонтитулы в документе, вам нужно просмотреть все разделы и удалить каждый соответствующий узел верхнего или нижнего колонтитула.

В следующем примере кода показано, как удалить все нижние колонтитулы из всех разделов, но оставить заголовки нетронутыми. Аналогичным способом можно удалить только заголовки:

{{< gist "aspose-words-gists" "2e1b2b28253780881d116e3a873ee668" "remove-footers.py" >}}

{{% alert color="primary" %}}

Вы можете скачать образец файла этого примера по номеру [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Header%20and%20footer%20types.docx).

{{% /alert %}}