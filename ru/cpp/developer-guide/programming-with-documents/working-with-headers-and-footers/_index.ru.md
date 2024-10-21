﻿---
title: Работа с верхними и нижними колонтитулами в C++
second_title: Aspose.Words для C++
articleTitle: Работа с верхними и нижними колонтитулами
linktitle: Работа с верхними и нижними колонтитулами
description: "Как манипулировать верхними и нижними колонтитулами с помощью C++."
type: docs
weight: 150
url: /ru/cpp/working-with-headers-and-footers/
---

Aspose.Words позволяет пользователям работать с верхними и нижними колонтитулами документа. Верхний колонтитул - это текст, который размещается вверху страницы, а нижний колонтитул - это текст внизу страницы. Как правило, эти области используются для вставки информации, которая должна повторяться на всех или некоторых страницах документа, например номеров страниц, даты создания, информации о компании и так далее.

## Создавайте верхние и нижние колонтитулы с помощью DocumentBuilder

Если вы хотите добавить верхний или нижний колонтитул документа программно, самый простой способ - использовать для этого класс [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/).

В следующем примере кода показано, как добавить верхний и нижний колонтитулы для страниц документа:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "create-header-footer.h" >}}

## Укажите параметры верхнего или нижнего колонтитула

Когда вы добавляете верхний или нижний колонтитул к документу, вы можете задать некоторые дополнительные свойства. Aspose.Words предоставляет пользователям классы [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/) и [HeaderFooterCollection](https://reference.aspose.com/words/cpp/aspose.words/headerfootercollection/), а также перечисление [HeaderFooterType](https://reference.aspose.com/words/cpp/aspose.words/headerfootertype/), которые дают вам больше контроля над процессом настройки верхнего и нижнего колонтитулов.

### Укажите тип верхнего или нижнего колонтитула

Вы можете указать три различных типа верхних колонтитулов и три различных типа нижних колонтитула для одного документа:

1. Верхний и/или колонтитул для первой страницы
2. Верхний и/или нижний колонтитулы для четных страниц
3. Верхний и/или нижний колонтитулы для нечетных страниц

В следующем примере кода показано, как добавить заголовок для нечетных страниц документа:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "header-footer-type.h" >}}

### Укажите, следует ли отображать разные верхние или нижние колонтитулы для первой страницы

Как было сказано выше, вы также можете установить другой верхний или нижний колонтитул для первой страницы. Для этого вам нужно установить флаг [DifferentFirstPageHeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_differentfirstpageheaderfooter/) на `true`, а затем указать значение **HeaderFirst** или **FooterFirst**.

В следующем примере кода показано, как установить заголовок только для первой страницы:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "different-first-page.h" >}}

### Укажите, следует ли отображать разные верхние и нижние колонтитулы для четных и нечетных страниц

 Далее вам нужно будет установить разные верхние и нижние колонтитулы для четных и нечетных страниц документа. Для этого вам нужно установить флаг [OddAndEvenPagesHeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_oddandevenpagesheaderfooter/) на `true`, а затем указать значения **HeaderPrimary** и **HeaderEven** или **FooterPrimary** и **FooterEven**.

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "odd-even-pages.h" >}}

### Вставьте изображение, расположенное в нужном месте, в заголовок

Чтобы поместить изображение в верхний или нижний колонтитул, используйте тип верхнего колонтитула **HeaderPrimary** или тип нижнего колонтитула **FooterPrimary** и метод `InsertImage`.

В следующем примере кода показано, как добавить изображение в заголовок:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "insert-image.h" >}}

### Установите свойства шрифта и абзаца для текста верхнего или нижнего колонтитула

С помощью Aspose.Words вы можете задать свойства шрифта и абзаца, использовать тип верхнего колонтитула **HeaderPrimary** или **FooterPrimary**, а также методы и свойства для работы со шрифтами и абзацами, которые вы используете для текста документа.

В следующем примере кода показано, как задать тексту в заголовке значение Arial, полужирный шрифт, размер 14 и выравнивание по центру:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "font-props.h" >}}

### Вставьте номера страниц в верхний или нижний колонтитул

При необходимости вы можете добавить номера страниц в верхний или нижний колонтитул. Для этого используйте тип верхнего колонтитула **HeaderPrimary** или тип нижнего колонтитула **FooterPrimary** и метод [InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/) для добавления необходимого поля.

В следующем примере кода показано, как добавить номера страниц в нижний колонтитул справа:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "page-numbers.h" >}}

### Используйте верхние и нижние колонтитулы, определенные в предыдущем разделе

Если вам нужно скопировать верхний или нижний колонтитул из предыдущего раздела, вы можете сделать и это.

В следующем примере кода показано, как скопировать верхний или нижний колонтитул из предыдущего раздела:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "copy-headers-footers-from-previous-section.h" >}}

### Обеспечьте внешний вид верхнего или нижнего колонтитула при использовании различных ориентаций и размеров страниц

Aspose.Words позволяет создать внешний вид верхнего или нижнего колонтитула при использовании различных ориентаций и размеров страниц.

В следующем примере показано, как это сделать:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "link-to-previous-header-footer.h" >}}

## Как удалить только верхние или только нижние колонтитулы

Каждый раздел документа может содержать до трех верхних и до трех нижних колонтитулов (для первой, четной и нечетной страниц). Если вы хотите удалить все верхние или все нижние колонтитулы в документе, вам нужно пройтись по всем разделам и удалить каждый соответствующий узел верхнего или нижнего колонтитула.

В следующем примере кода показано, как удалить все нижние колонтитулы из всех разделов, но оставить верхние колонтитулы нетронутыми. Аналогичным образом можно удалить только верхние колонтитулы:

{{< gist "aspose-words-gists" "e26133cadfcbe798f1ae301e2941f5ff" "remove-footers.h" >}}

{{% alert color="primary" %}}

Вы можете скачать примерный файл этого примера с [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}