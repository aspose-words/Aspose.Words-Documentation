---
title: MFont זמינות והחלפה ב C++
second_title: Aspose.Words עבור C++
articleTitle: זמינות גופן והחלפה
linktitle: זמינות גופן והחלפה
description: "כאשר לא ניתן למצוא את גופן ההחלפה המדויק, Aspose.Words חייב להחליף אותו בגופן דומה במקום. מאמר זה מתאר את תהליך מציאת הגופן המתאים ביותר."
type: docs
weight: 12
url: /he/cpp/font-availability-and-substitution/
timestamp: 2024-09-24-14-35-44
---

טקסט במסמך יכול להיות מעוצב עם גופנים שונים, כגון אריאל, טיימס ניו רומן, ורדנה, ואחרים. כאשר Aspose.Words מעבד מסמך, הוא מנסה לבחור את הגופנים שצוינו במסמך.

עם זאת, ישנם מצבים שבהם לא ניתן למצוא את הגופן המדויק ו Aspose.Words חייב להחליף אותו בגופן דומה במקום. Aspose.Words בוחר את הגופן בהתאם לתהליך הבא:

1. Aspose.Words מנסה למצוא גופן בין מקורות הגופן הזמינים עם שם גופן מדויק.
1. Aspose.Words מנסה למצוא את הגופן הנדרש בין הגופנים המוטבעים במסמך המקורי. פורמטים מסוימים של מסמכים כגון DOCX יכולים להכיל גופנים משובצים.
1. אם Aspose.Words לא מצליח לאתר את הגופן הנדרש עם התאמת השם המדויקת, ואת המאפיין [AltName](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontinfo/get_altname/) שהוגדר עבור גופן זה, אז Aspose.Words ימצא את הגופן שהוגדר עם **AltName** מהכיתה [FontInfo](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_info), שמציינת את פרטי הגופן.
1. אם Aspose.Words לא מצליח לאתר את הגופן המוגדר, ו **AltName** לא מוגדר גם, אז כללי החלפת הגופן מוחלים אחד אחד, כמתואר להלן (כאשר נמצא ההחלפה המתאימה, תהליך החלפת הגופן נפסק והשלב הבא לא מבוצע):
   1. Aspose.Words ינסה להחיל OS הגדרות גופן, אם הן זמינות, באמצעות כלי השירות `FontConfig`. תכונה זו שאינהWindows חייבת לשמש עם FontConfig-תואם OS. כמעט לכל OS מבוסס יוניקס יש כבר ספרייה `FontConfig` שנועדה לספק תצורת גופנים, התאמה אישית וגישה לכל המערכת ליישומים. אחרת, ספרייה זו יכולה להיות מותקנת בקלות על ידי המשתמש.<br>
      Aspose.Words יודע לשאול נתונים ולפרש FontConfig תוצאות למטרותיו שלו. כברירת מחדל, כלי השירות `FontConfig` מושבת. תוכל להפעיל אותו באופן הבא:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_FontConfigSubstitution()->set_Enabled(true);
      {{< /highlight >}}
   1. השלב הבא הוא מנגנון פשוט, אבל חזק מאוד שנקרא [TableSubstitutionRule](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.table_substitution_rule). כברירת מחדל, תכונה זו פעילה וזמינה עבור כל OS. Aspose.Words משתמש XML טבלאות שמגדירות כללי החלפה בסיסיים עבור OS שונים. על פי כלל החלפת הטבלה, ייעשה שימוש ברשימת שמות הגופנים החלופיים.<br>
**XML**
      {{< highlight html >}}
      <TableSubstitutionSettings xmlns="Aspose.Words"> 
	<SubstitutesTable> 
		<Item OriginalFont="Arabic Transparent" SubstituteFonts="Arial" /> 
		… 
	</SubstitutesTable> 
      </TableSubstitutionSettings>
      {{< /highlight >}}
      OriginalFont - גופן להחלפה, SubstituteFonts - רשימת גרסאות החלפה, מופרדות בפסיק. הגופן הזמין הראשון משמש להחלפה.<br>
      המאפיין העיקרי של כלל זה הוא היכולת לטעון טבלאות החלפה משלך, כפי שהוא מוצג בדוגמה הבאה:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->Load(u"Table.xml");
      {{< /highlight >}}
      אתה יכול לקחת כבסיס את הטבלה הקיימת מהצנצנת או לשמור אותה באופן תכנותי באופן הבא:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->Save(u"MyTable.xml");
      {{< /highlight >}}
      למרות הגמישות של מנגנון זה, ישנם מקרים שבהם עדיף להשבית אותו, כפי שמוצג להלן:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->set_Enabled(false);
      {{< /highlight >}}
   1. כלל ההחלפה **FontInfo** יחול אם כלל החלפת הטבלה לא יכול למצוא את הגופן. מנגנון זה מופעל כברירת מחדל. Aspose.Words מוצא את הגופן המתאים ביותר בהתאם למידע הגופן הכלול במסמך מסוים. מידע זה ניתן לקבל מהכיתה **FontInfo** כפי שמוצג להלן:<br>
**C++**
      {{< highlight cpp >}}
      System::SharedPtr<FontInfoCollection> fontInfos = doc->get_FontInfos();
      {{< /highlight >}}
      משתמשים אינם יכולים להתערב בזרימת העבודה של תכונה זו אלא אם כן הם מחליטים להשבית אותה במקרה של תוצאות לא מספקות:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_FontInfoSubstitution()->set_Enabled(false);
      {{< /highlight >}}
      אם **FontInfo** אינו זמין עבור הגופן החסר, התהליך ייפסק.
   1. **DefaultFont** כלל החלפה יחול במקרה בו גם החלפת `FontInfo` נכשלה. כלל זה מופעל גם כברירת מחדל. על פי כלל זה, Aspose.Words ינסה להשתמש בגופן ברירת המחדל שצוין במאפיין [DefaultFontName](https://reference.aspose.com/words/cpp/aspose.words.fonts/defaultfontsubstitutionrule/get_defaultfontname/). אם המשתמש לא בחר בגופן ברירת המחדל שלו," טיימס ניו רומן " ישמש כגופן ברירת המחדל. ניתן להשבית כלל זה כמוצג להלן:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_DefaultFontSubstitution()->set_Enabled(false);
      {{< /highlight >}}
      כדי לבדוק את גופן ברירת המחדל הנוכחי, השתמש:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_DefaultFontSubstitution()->get_DefaultFontName();
      {{< /highlight >}}
      כדי להגדיר אפשרות החלפה משלך, החל:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_DefaultFontSubstitution()->set_DefaultFontName(u"Arial");
      {{< /highlight >}}
1. אם Aspose.Words אינו מסוגל לבצע את החלפת הגופן, הוא מנסה להשיג את הגופן הזמין הראשון ממקורות הגופן הזמינים.
1. לבסוף, אם Aspose.Words לא מצליח למצוא גופנים בין מקורות הגופנים הזמינים, הוא מעביר את המסמך באמצעות גופן פנווד החינמי המוטמע במכלול Aspose.Words.

{{% alert color="primary" %}}

אם **FontInfo** זמין, *FontInfo substitution rule* תמיד יפתור את הגופן ויעקוף את כלל הגופן המוגדר כברירת מחדל. אם ברצונך להשתמש בכלל הגופן המוגדר כברירת מחדל, עליך להשבית את *FontInfo substitution rule*. שים לב כי *FontConfig substitution rule* יפתור את הגופן ברוב המקרים, ובכך עוקף את כל הכללים האחרים.

{{% /alert %}}


