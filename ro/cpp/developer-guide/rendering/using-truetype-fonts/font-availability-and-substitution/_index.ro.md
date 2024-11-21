---
title: MFont disponibilitate și înlocuire în C++
second_title: Aspose.Words pentru C++
articleTitle: Disponibilitatea și înlocuirea fontului
linktitle: Disponibilitatea și înlocuirea fontului
description: "Când fontul de substituție exact nu poate fi găsit, Aspose.Words trebuie să-l înlocuiască cu un font similar. Acest articol descrie procesul de găsire a celui mai potrivit font."
type: docs
weight: 12
url: /ro/cpp/font-availability-and-substitution/
timestamp: 2024-09-24-14-35-44
---

Un text dintr-un document poate fi formatat cu diferite fonturi, cum ar fi Arial, Times New Roman, Verdana și altele. Când Aspose.Words redă un document, acesta încearcă să selecteze fonturile specificate în document.

Cu toate acestea, există situații în care fontul exact nu poate fi găsit și Aspose.Words trebuie să-l înlocuiască cu un font similar. Aspose.Words Selectează fontul conform următorului proces:

1. Aspose.Words încearcă să găsească un font printre sursele de fonturi disponibile cu un nume exact al fontului.
1. Aspose.Words încearcă să găsească fontul necesar printre fonturile încorporate în documentul original. Unele formate de documente, cum ar fi DOCX, pot conține fonturi încorporate.
1. Dacă Aspose.Words nu poate localiza fontul necesar cu potrivirea exactă a numelui și proprietatea [AltName](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontinfo/get_altname/) definită pentru acest font, atunci Aspose.Words va găsi fontul definit cu **AltName** din clasa [FontInfo](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_info), care specifică informațiile despre font.
1. Dacă Aspose.Words nu poate localiza fontul definit și **AltName** nu este, de asemenea, definit, atunci regulile de substituire a fontului sunt aplicate unul câte unul, așa cum este descris mai jos (când se găsește înlocuirea corespunzătoare, procesul de substituire a fontului se oprește și următorul pas nu este executat):
   1. Aspose.Words va încerca să aplice OS setările fontului, dacă sunt disponibile, utilizând utilitarul `FontConfig`. Această caracteristică Non - Windows trebuie utilizată cu un FontConfig compatibil OS. Aproape orice OS bazat pe Unix are deja o bibliotecă `FontConfig` care este concepută pentru a oferi configurarea fontului la nivel de sistem, personalizarea și accesul la aplicații. În caz contrar, această bibliotecă poate fi instalată cu ușurință de către utilizator.<br>
      Aspose.Words știe cum să interogheze datele și să interpreteze rezultatele FontConfig în scopuri proprii. În mod implicit, utilitarul `FontConfig` este dezactivat. Îl puteți activa după cum urmează:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_FontConfigSubstitution()->set_Enabled(true);
      {{< /highlight >}}
   1. Următorul pas este un mecanism simplu, dar incredibil de puternic numit [TableSubstitutionRule](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.table_substitution_rule). În mod implicit, această caracteristică este activă și disponibilă pentru orice OS. Aspose.Words utilizează XML tabele care definesc regulile de substituție de bază pentru diferite OS. Conform regulii de substituire a tabelului, va fi utilizată lista numelor de fonturi înlocuitoare.<br>
**XML**
      {{< highlight html >}}
      <TableSubstitutionSettings xmlns="Aspose.Words"> 
	<SubstitutesTable> 
		<Item OriginalFont="Arabic Transparent" SubstituteFonts="Arial" /> 
		… 
	</SubstitutesTable> 
      </TableSubstitutionSettings>
      {{< /highlight >}}
      OriginalFont - un font care trebuie înlocuit, SubstituteFonts - lista variantelor de substituție, separate printr-o virgulă. Primul font disponibil este utilizat pentru înlocuire.<br>
      Caracteristica principală a acestei reguli este capacitatea de a încărca propriile tabele de substituție, așa cum se arată în exemplul următor:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->Load(u"Table.xml");
      {{< /highlight >}}
      Puteți lua ca bază tabelul existent din borcan sau îl puteți salva programatic în felul următor:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->Save(u"MyTable.xml");
      {{< /highlight >}}
      În ciuda flexibilității acestui mecanism, există unele cazuri când este mai bine să îl dezactivați, așa cum se arată mai jos:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->set_Enabled(false);
      {{< /highlight >}}
   1. Regula de substituție **FontInfo** va fi aplicată dacă regula de substituție a tabelului nu poate găsi fontul. Acest mecanism este activat în mod implicit. Aspose.Words găsește fontul cel mai potrivit în funcție de informațiile despre font conținute într-un anumit document. Aceste informații pot fi obținute din clasa **FontInfo** după cum se arată mai jos:<br>
**C++**
      {{< highlight cpp >}}
      System::SharedPtr<FontInfoCollection> fontInfos = doc->get_FontInfos();
      {{< /highlight >}}
      Utilizatorii nu pot interveni în fluxul de lucru al acestei funcții decât dacă decid să o dezactiveze în caz de rezultate nesatisfăcătoare:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_FontInfoSubstitution()->set_Enabled(false);
      {{< /highlight >}}
      Dacă **FontInfo** nu este disponibil pentru fontul lipsă, atunci procesul se oprește.
   1. **DefaultFont** Regula de substituție va fi aplicată în cazul în care substituția `FontInfo` a eșuat, de asemenea. Această regulă este, de asemenea, activată în mod implicit. Conform acestei reguli, Aspose.Words va încerca să utilizeze fontul implicit specificat în proprietatea [DefaultFontName](https://reference.aspose.com/words/cpp/aspose.words.fonts/defaultfontsubstitutionrule/get_defaultfontname/). Dacă utilizatorul nu și-a ales propriul font implicit, atunci "Times New Roman" va fi folosit ca font implicit. Această regulă poate fi dezactivată după cum se arată mai jos:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_DefaultFontSubstitution()->set_Enabled(false);
      {{< /highlight >}}
      Pentru a verifica fontul implicit curent, utilizați:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_DefaultFontSubstitution()->get_DefaultFontName();
      {{< /highlight >}}
      Pentru a configura propria opțiune de înlocuire, aplicați:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_DefaultFontSubstitution()->set_DefaultFontName(u"Arial");
      {{< /highlight >}}
1. Dacă Aspose.Words nu poate efectua substituirea fontului, încearcă să obțină primul font disponibil din sursele de font disponibile.
1. În cele din urmă, dacă Aspose.Words nu poate găsi niciun font printre sursele de fonturi disponibile, acesta redă documentul folosind fontul Fanwood gratuit care este încorporat în ansamblul Aspose.Words.

{{% alert color="primary" %}}

Dacă **FontInfo** este disponibil, *FontInfo substitution rule* va rezolva întotdeauna fontul și va suprascrie regula implicită a fontului. Dacă doriți să utilizați regula implicită a fontului, ar trebui să dezactivați *FontInfo substitution rule*. Rețineți că *FontConfig substitution rule* va rezolva fontul în majoritatea cazurilor și, prin urmare, va înlocui toate celelalte reguli.

{{% /alert %}}


