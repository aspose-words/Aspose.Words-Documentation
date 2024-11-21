---
title: Вилучення вмісту між документами
second_title: Aspose.Words для Python
articleTitle: Витягувати зміст між нотами в документі
linktitle: Витягувати вміст між Нодами
description: "Як витягти конкретний вміст з діапазону в межах документа легко за допомогою Pythonй"
type: docs
weight: 140
url: /uk/python-net/how-to-extract-selected-content-between-nodes-in-a-document/
timestamp: 2024-01-27-14-07-04
---

При роботі з документами важливо легко витягти вміст з певного діапазону в межах документа. Однак зміст може складатися з складних елементів, таких як абзаци, таблиці, зображення тощо.

Незалежно від того, який вміст повинен бути вилучений, метод вилучення, який вміст завжди буде визначатися, за допомогою яких вузлів вибираються для отримання вмісту між. Це можуть бути всі текстові органи або прості текстові рядки.

Є багато можливих ситуацій і тому багато різних типів вузлів, щоб розглянути при вилучення вмісту. Наприклад, ви можете вилучити вміст:

- Два специфічних абзаців
- Специфічні траси тексту
- Поля різних типів, таких як об'єднання полів
- Старт і кінцеві діапазони закладки або коментаря
- Різні органи тексту, що містяться в окремих розділах

У деяких ситуаціях, можливо, навіть потрібно об'єднати різні типи вузлів, такі як вилучення вмісту між абзацом і поле, або між забігом і закладкою.

Дана стаття забезпечує виконання коду для вилучення тексту між різними вузлами, а також прикладами поширених сценаріїв.

{{% alert color="primary" %}}

Ці приклади є лише кількома демонстраціями багатьох можливостей. Ми плануємо функціональність текстового видобутку, щоб бути частиною громадськості API в майбутньому, і не потрібно додаткового коду. У той же час відчуйте свої запити щодо цього функціоналу [Aspose.Words Новини](https://forum.aspose.com/c/words/8)й

{{% /alert %}}

## Чому Екстракт контенту

Часто мета вилучення змісту полягає в тому, щоб дублювати або зберегти його окремо в новому документі. Наприклад, ви можете отримати вміст і:

- Скопіювати його в окремий документ
- Перетворення певної частини документа в PDF або зображення
- Дублікат вмісту в документі багато разів
- Робота з виписаним вмістом окремо від решти документа

Це може бути легко досягнуто за допомогою Aspose.Words і виконання коду нижче.

## Вилучення вмісту алгоритму

Введіть номер мобільного, який Ви вказали при укладаннi договору з банком - для ідентифікації. Загальний контур цієї техніки передбачає:

1,1 км Зберігаючи вершини, які диктують область змісту, який буде вилучений з вашого документа. Виходячи з того, що вони хочуть бути вилучені.
1,1 км Передача цих вузлів до **ExtractContent** метод, передбачений нижче. Ви також повинні пройти boolean параметр, який стверджує, чи є ці вершини, діють як маркери, повинні бути включені до видобутку або ні.
1,1 км Відновлення списку клонованого вмісту (копійованих вузлів), зазначених для вилучення. Ви можете використовувати цей список вузлів в будь-який зручний спосіб, наприклад, створення нового документа, що містить тільки обраний вміст.

## Як отримати контент

Щоб витягти вміст з вашого документа, потрібно викликати **екстракт_content** метод нижче і пропускають відповідні параметри. Основою даного методу передбачається пошук вузлів рівня блоків (парографії та таблиці) і скронювання їх для створення ідентичних копій. Якщо надійшла маркерна вершина, то метод здатний просто копіювати вміст на цьому рівні і додати його в масив.

Однак якщо маркерні вузли знаходяться в лінії (на дитину абзацу), то ситуація стає більш складною, так як необхідно розбити абзацу в інлайн-вузлі, будьте його забігом, закладками тощо. Контент у клонованих материнських вузлах не присутній між маркерами. Цей процес використовується для того, щоб вбудовані вузли ще зберігали форматування батьківського абзацу. Метод також буде виконувати перевірки на вузлах, які пропускаються як параметри, і кидає виключення, якщо або вузол недійсний. Параметри, які будуть передані в цей метод:

1,1 км **Почати** і **ендНод**й Першими двома параметрами є вершини, які визначають, де вилучення змісту є починати і закінчуватися відповідно. Ці вершини можуть бути як за рівнем блоку ([Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) або рівень inline (e.g) [Run](https://reference.aspose.com/words/python-net/aspose.words/run/), [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/), [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) т.д.):
   1. Щоб передати поле, необхідно пройти відповідне [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) об'єкт.
   1. Пропустити закладки, [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) і [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/) вузли повинні бути передані.
   1. Пропустити коментарі, [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) і [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) повинні бути використані вузли.
1,1 км **Інклюзив**й Захищаючи, якщо маркери включені в видобуток або ні. Якщо цей варіант встановлюється false і ті ж вершини або послідовні вузли пропускаються, після чого буде повернеться порожній список:
   1. Якщо [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) Після того, як цей параметр визначає, якщо вся поле буде включена або виключена.
   1. Якщо [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) або [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/) вузол пропускається, цей варіант визначає, якщо закладка включена або просто вміст між діапазоном закладок.
   1. Якщо [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/) або [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) Якщо сам коментар буде включений або просто вміст в діапазоні коментарів.

Реалізація реалізації **екстракт_content** метод можна знайти [Головна](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/DocsExamples/DocsExamples/programming_with_documents/contents_management/extract_content_helper.py)й Цей метод буде зазначений у сценаріїв цієї статті.

Ми також визначаємо користувальницький метод, щоб легко створити документ з вилучених вузлів. Цей метод використовується в багатьох сценаріях нижче і просто створює новий документ і імпорт вилучення вмісту в нього.

Приклад коду показує, як взяти список вузлів і вставити їх в новий документ:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "generate-document.py" >}}

## Вилучення вмісту між пунктами

Це показує, як використовувати метод вище, щоб витягувати вміст між певними пунктами. У цьому випадку ми хочемо витягти тіло листа, знайденого в першій половині документа. Ми можемо сказати, що це між 7 і 11 абзац.

Код нижче виконує це завдання. Вилучення відповідних абзаців з використанням [CompositeNode.get_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child/) метод на документі і проходження зазначених показників. Потім ми проводимо ці вузли до **екстракт_content** метод і стан, які вони повинні бути включені в видобуток. Цей метод буде повернений вміст між цими вузлами, які потім вставляються в новий документ.

Приклад наступного коду показує, як витягти вміст між певними абзацами за допомогою **екстракт_content** метод вище:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-paragraphs.py" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл зразок цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx)й

{{% /alert %}}

## Витягувати вміст між різними типами

Ми можемо вилучити вміст між будь-якими поєднаннями рівня блоку або внутрішніх вузлів. У цьому сценарії нижче ми виведемо вміст між першим абзацом та столиком у другому розділі включно. Ми отримуємо вузли маркерів за допомогою виклику [Body.first_paragraph](https://reference.aspose.com/words/python-net/aspose.words/story/first_paragraph/) і [CompositeNode.get_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child/) метод на другий розділ документа для отримання відповідного [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) і [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) вершини. Для легкої варіації, замість того, щоб дублювати вміст і вставити його нижче оригіналу.

Приклад наступного коду показує, як витягти вміст між абзацом та столиком за допомогою пункту **екстракт_content** метод:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-block-level-nodes.py" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл зразок цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx)й

{{% /alert %}}

## Вилучення вмісту між пунктами На основі стилю

Ви можете вилучити вміст між абзацами одного або іншого стилю, таких як між абзацами, позначеними стилями.

Код нижче показує, як досягти цього. Це простий приклад, який видобуває вміст між першим екземпляром стилів "Хайдінг 1" та "Хайдер 3" без вилучення заголовків. Для цього ми встановлюємо останній параметр до false, який визначає, що вузли маркера не повинні бути включені.

У правильному виконанні слід виконувати в петлі для вилучення вмісту між усіма пунктами цих стилів з документа. Вилучений вміст копіюється в новий документ.

Приклад наступного коду показує, як витягувати вміст між абзацами з певними стилями за допомогою **екстракт_content** метод:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-paragraph-styles.py" >}}

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "paragraphs-by-style-name.py" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл зразок цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx)й

{{% /alert %}}

## Витягувати вміст між певними пробігами

Ви можете витягувати вміст між вузлами, такими як [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) і Виконуються роботи з різних абзаців. Введіть номер мобільного, який Ви вказали при укладаннi договору з банком - для ідентифікації. [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) вузол.

Приклад наступного коду показує, як витягувати вміст між певними проходами одного абзацу за допомогою **екстракт_content** метод:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-runs.py" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл зразок цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx)й

{{% /alert %}}

## Витягувати вміст за допомогою поля

Для використання поля як маркер, [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) повинна бути передана вершина. Останній параметр до останнього параметра **екстракт_content** метод буде визначати, якщо вся поле повинна бути включена або ні. Додайте вміст поля злиття "Повний ім'я" та пункт у документі. Ми використовуємо [DocumentBuilder.move_to_merge_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_merge_field/) метод методу [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) клас. Це повернеться [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) вершина з назви поля зливається до неї.

У нашому випадку ми встановимо останній параметр, який був переданий **екстракт_content** метод до `False` виключити поле з видобутку. Ми проведемо вилучення вмісту в PDF.

Приклад наступного коду показує, як витягувати вміст між певним полем та абзацом у документі з використанням **екстракт_content** метод:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-using-field.py" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл зразок цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx)й

{{% /alert %}}

## Вилучення контенту з закладки

У документі зміст, який визначається в межах закладки, акупсульований [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) і [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/) вершини. Зміст, знайдений між цими двома вузлами, складають закладку. Ви можете пройти або з цих вузлів, як будь-який маркер, навіть з різних зауважень, до тих пір, поки початковий маркер з'являється до закінчення маркеру в документі. Ми витягуємо цей вміст у новий документ, використовуючи код нижче. Про нас **Інклюзив** параметр показує, як зберігати або відкинути закладку.

Приклад наступного коду показує, як витягти вміст, довідкований закладок за допомогою закладки **екстракт_content** метод:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-bookmark.py" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл зразок цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx)й

{{% /alert %}}

## Вилучення контенту з коментаря

Коментар до проекту [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/), [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/) і [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) вершини. Всі ці вершини знаходяться в режимі онлайн. Перші два вузли захоплюють вміст у документі, який посилається коментарем, як показано на скріншоті нижче. Про нас [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) Сам вузол є [InlineStory](https://reference.aspose.com/words/python-net/aspose.words/inlinestory/) які можуть містити абзаци та пробіги. Це повідомлення про коментар, як видно як коментар бульбашки в оглядовому каструлі. Як це вершина інлайн і нащадок тіла ви також можете витягти вміст зсередини цього повідомлення.

Прокоментуйте заголовок, першу абзацу та таблицю у другому розділі. Додайте цей коментар у новий документ. Про нас **Інклюзив** варіант диктує, якщо сам коментар зберігається або відхилений.

Приклад наступного коду показує, як це зробити:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-content-between-comment-range.py" >}}

{{% alert color="primary" %}}

Ви можете завантажити файл зразок цього прикладу з [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Extract%20content.docx)й

{{% /alert %}}

## Як витягти текст тільки

Способи отримання тексту з документа:

- Використання [Document.save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) зберегти як звичайний текст у файл або потік
- Використання [Node.to_string](https://reference.aspose.com/words/python-net/aspose.words/node/to_string/) і пройти [SaveFormat.TEXT](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#text) параметр. Внутрішня, це викликає збереження тексту в потік пам'яті і повертає отриманий рядок
- Використання [Node.get_text](https://reference.aspose.com/words/python-net/aspose.words/node/get_text/) щоб отримати текст з усіма Microsoft Word Символи керування, включаючи коди поля

### Використання Node.get_text і Node.to_string

Р Документ Word може містити символи керування, які позначення спеціальних елементів, таких як поле, кінець комірки, кінець розділу тощо. Повний список можливих символів керування Word визначено в [ControlChar](https://reference.aspose.com/words/python-net/aspose.words/controlchar/) клас. Про нас [Node.get_text](https://reference.aspose.com/words/python-net/aspose.words/node/get_text/) метод повертає текст з усіма символами керування, присутніми в вершині.

Дзвінки [to_string](https://reference.aspose.com/words/python-net/aspose.words/node/to_string/) повертає звичайне текстове представлення документа тільки без символів управління. Для отримання додаткової інформації про експорт як звичайний текст див. Використання [SaveFormat.TEXT](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#text)й

Приклад коду показує різницю між викликом [get_text](https://reference.aspose.com/words/python-net/aspose.words/node/get_text/) і [to_string](https://reference.aspose.com/words/python-net/aspose.words/node/to_string/) методи на вершині:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "simple-extract-text.py" >}}

### Використання `SaveFormat.Text`

Цей приклад зберігає документ наступним чином:

- Фільтрує польові символи та польові коди, форма, примітка, кінцеві посилання та коментарі
- Замінює кінець абзацу **ControlChar.Cr** символи з **ControlChar.CrLf** поєднання
- Використовуйте кодування UTF8

Приклад наступного коду показує, як зберегти документ у форматі TXT:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "docx-to-txt.py" >}}

## Вилучення зображень з фігур

Ви можете вилучити зображення документів для виконання деяких завдань. Aspose.Words дозволяє зробити це і.

Приклад наступного коду показує, як витягти зображення з документа:

{{< gist "aspose-words-gists" "399801c9a5e656ed05aa2d7ac5ebc41e" "extract-images.py" >}}
