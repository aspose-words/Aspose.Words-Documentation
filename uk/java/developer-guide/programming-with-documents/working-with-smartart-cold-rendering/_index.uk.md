---
title: Робота з Смарт Мистецтво холодної рендерингу в Java
second_title: Aspose.Words для Java
articleTitle: Робота з Смарт Мистецтво холодної рендерингу
linktitle: Робота з Смарт Мистецтво холодної рендерингу
type: docs
description: "Aspose.Words для Java виконує Смарт Art Cold Rendering, що означає, що він виділяється і надає об'єкти SmartArt, якщо попередньо відхилений креслення SmartArt відсутній або неправильний."
weight: 330
url: /uk/java/working-with-smartart-cold-rendering/
timestamp: 2024-01-27-14-07-04
---

Інтелектуальна графіка використовується для швидкого та легкого створення візуального представлення інформації. Ви просто обираєте від великої кількості макетів, які найкраще підходять для вашої ситуації. Ця простота використання робить графіку SmartArt досить популярним для деяких цілей.

Microsoft Word генерує і зберігає передчасне креслення разом з `SmartArt` об'єкт. У більшості випадків передчасне креслення добре продається Aspose.Words і не потрібно додаткових дій. Однак, якщо документ зберігається іншими додатками, то попередньо відхилений креслення SmartArt може бути відсутнім або неправильним. У цьому випадку, `SmartArt` сам об'єкт повинен бути прокладений і надано за допомогою Aspose.Wordsй Ми називаємо цей процес `SmartArt` Холодний рендеринг.

## Використання Смарт Мистецтво холодної рендерингу

Aspose.Words дозволяє використовувати попередньо підготовлений малюнок або виконувати холодний рендеринг:

* Ім'я * Якщо доступний попередньо відступний малюнок, Aspose.Words використовувати його для рендерингу `SmartArt` об'єкт.
* Ім'я * Якщо відсутній попередній малюнок, Aspose.Words непристойно виконує холодний рендеринг для рендерингу `SmartArt` об'єкт.
* Ім'я * Якщо попередній відступний малюнок присутній, але невірно, потрібно виконати SmartArt холодний рендеринг явно за допомогою виклику [UpdateSmartArtDrawing](https://reference.aspose.com/words/java/com.aspose.words/shape/#updateSmartArtDrawing) метод.

Приклад коду показує, як оновити креслення для всіх діаграм у документі:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-UpdateSmartArtDrawing.java" >}}

## Підтримка стандартних макетів SmartArt

В даний час тільки обмежена кількість стандартних Microsoft Word Підтримуються макети SmartArt. Крім того, деякі з цих макетів підтримуються частково, зазначають, що наводяться значні вузли та форми діаграми, але можуть бути відмінності між Microsoft Word і Aspose.Words схема макета.

У таблиці нижче перераховують повністю і частково підтримувані макети:

|  Розумний Художня форма Group |  Повністю підтримувані макети |  Частково підтримувані макети |
|  ----------------------  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  `List`  |  <ul><li>Базовий список блоків</li><li>Східні гексагони</li><li>Список вертикальних буклетів</li><li>Список вертикальних коробок</li><li>Список розмірів кар'єри</li><li>Горизонтальний список буклетів</li><li>Grouped Список</li><li>Список вертикальних блоків</li><li>Вертикальний список Chevron</li><li>Вертикальний список стрілок</li><li>Список трапеції</li><li>Список таблиці</li><li>Список пам'яті</li><li>Цільовий список</li></ul> |  <ul><li>Список ліній</li><li>Список вертикальних кронштейнів</li><li>Список вкладок</li><li>Список відправлень</li><li>Вертикальний список акцентів</li><li>Вертикальний список коло</li></ul> |
|  `Process`  |  <ul><li>Базовий процес</li><li>Точний процес</li><li>Процес безперервного блоку</li><li>Збільшення процесу стрілки</li><li>Налаштування тексту</li><li>Базовий час</li><li>Базовий Chevron Процес</li><li>Chevron Точний Процес</li><li>Закритий Chevron Процес</li><li>Чеврон Список</li><li>Вертикальний процес</li><li>Переміщений процес</li><li>Список процесів</li><li>Базовий процес кредитування</li><li>Повторний процес кредитування</li><li>Детальний процес</li><li>Вгору</li><li>Процес вилучення</li><li>Круговий процес кредитування</li></ul> |  <ul><li>Кроковий процес</li><li>Крок вниз процес</li><li>Альтернативний потік</li><li>Збільшення процесу кола</li><li>Процес горіння</li><li>Процес з'єднання блоку</li><li>Процесори</li><li>VIP Партер</li><li>Процесор</li><li>Покроковий процес</li><li>Фасадний процес</li><li>Випадковий на результат Процес</li><li>Процесор кола</li></ul> |
|  `Cycle`  |  –                                                             |  <ul><li>Сегментований цикл</li><li>Хексагон Радіальний</li></ul> |
|  `Hierarchy`  |  –                                                             |  <ul><li>Настільна ієрархія</li><li>Архітектура</li></ul> |
|  `Relationship`  |  <ul><li>Посилання</li><li>Поза "Ложки"</li><li>Шнур</li><li>Плюс і мінус</li><li>Стрілка стрічка</li><li>Лічильники</li><li>Оппозиції стрілок</li><li>Нестачена мета</li><li>Основні цілі</li><li>Основні пиріжки</li><li>Основи</li><li>Стійка вен</li><li>Каблучка міжключена</li></ul> |  <ul><li>Круглий зв'язок</li><li>Ідеї</li><li>Еквалія</li><li>Вертикальне рівняння</li><li>Лінійний вен</li></ul> |
|  `Matrix`  |  <ul><li>Основні матриці</li><li>Названа Матриця</li><li>Сітка Matrix</li><li>цикл матриці</li></ul> |  –                                                             |
|  `Pyramid`  |  –                                                             |  <ul><li>Пірамід</li></ul> |

## Порівняння смарт-арт-рейдерства в Aspose.Words і Microsoft

Таблиця нижче показує приклад фотографії Aspose.Words Холодний Рендеринг деяких стандартних макетів у порівнянні з Microsoft Word вихід:

|                                 |   **Aspose.Words**                                              |   **Microsoft Word**                                            |
|  -----------------------------  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|   **Basic Process**              |   <img src="/words/java/working-with-smartart-cold-rendering/basic-process-aspose.png" alt="basic_process_aspose"/>  |   <img src="/words/java/working-with-smartart-cold-rendering/basic-process-word.png" alt="basic_process_word"/>  |
|   **Circular Bending Process**   |   <img src="/words/java/working-with-smartart-cold-rendering/circular-bending-process-aspose.png" alt="circular_bending_process_aspose"/>  |   <img src="/words/java/working-with-smartart-cold-rendering/circular-bending-process-word.png" alt="circular_bending_process_word"/>  |
|   **Repeating Bending Process**  |   <img src="/words/java/working-with-smartart-cold-rendering/repearing-bending-process-aspose.png" alt="repearing_bending_process_aspose"/>  |   <img src="/words/java/working-with-smartart-cold-rendering/repearing-bending-process-word.png" alt="repearing_bending_process_word"/>  |
|   **Trapezoid List**             |   <img src="/words/java/working-with-smartart-cold-rendering/trapezoid-list-aspose.png" alt="trapezoid_list_aspose"/>  |   <img src="/words/java/working-with-smartart-cold-rendering/trapezoid-list-word.png" alt="trapezoid_list_word"/>  |
