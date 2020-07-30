---
title: How to Hyphenate Words of Specified Languages
type: docs
weight: 40
url: /net/how-to-hyphenate-words-of-specified-languages/
---

<RK This article needs to start with a short explanation about hyphenation in Aspose.Words and MS Word and how the user is affected. **It needs to explain that hyphenation will affect layout and as a result it will affect PDF etc outputs. We also need to mention that these days hyphenation is not as often used as before. For example in English documents hyphenation is rarely used.** This article should be moved towards the end of the Rendering section. Also, does the article or code example explain where to get the hyphenation dictionaries from>

<RK Because hyphenation is rarely used in practice, I would prefer this article to be moved away from Rendering to some other place.>



[mg to alex: Please review this article:

1. Extend the article with the information from the comment above "This article needs to start with a short explanation about hyphenation in Aspose.Words and MS Word and...".
1. Check the existing information for relevance.
1. Make corrections: add comments or edit the text of the article.
1. Extend the article with additional information on the topic, if necessary.

Please feel free to ask me any questions:

1. rocketchat: mary.gerasimova
1. e-mail: [mary.gerasimova@aspose.com](/words/net/mailto-mary-gerasimova@aspose-com/)

How to add a comment: use the highlighting in orange and place it in square brackets (text text [comment] text) or angle brackets (text text <comment> text).]

[mg to alex: I think you need to combine the description of hyphenation in AW and MW below in one section with a common heading. Please give a little more information in your article on existing hyphenation library for Open Office, MW, etc.]

## **Impact on layout**


When breaking text into lines, Aspose.Words checks each word whether it fits entirely into the current line. If another word is too long to fit at the end of the line, by default Aspose.Words moves it to the beginning of the next line instead of hyphenating it. However, the hyphenation feature can be used in Aspose.Words to insert hyphens into words to eliminate gaps in justified text or to maintain an even line length in narrow columns.

This obviously may affect number of lines and thus, number of pages.



## **MS Word hyphenation**
Microsoft Word also allows using hyphenation if necessary. When MS Office language pack is installed two files appear in the %Microsoft Office%\root\OfficeNN\PROOF _directory, they are related to hyphenation (for Russian MSHY7RU.DLL, MSHY7RU.LEX, for English MSHY7EN.DLL, MSHY7EN.LEX).

MSHY7* .LEX file is apparently a spellchecking/hyphenation dictionary.
## **OpenOffice hyphenation**
For spell checking OpenOffice uses Hunspell library (<http://hunspell.github.io/>). For hyphenation Hunspell uses the [Hyphen](https://github.com/hunspell/hyphen).

Library [Hyphen](https://github.com/hunspell/hyphen) provides a generalization of TeX’s hyphenation algorithm that allows automatic non-standard hyphenation by competing standard and non-standard hyphenation patterns.

Algorithm and format of hyphenation dictionaries is described below:

<https://github.com/hunspell/hyphen/blob/master/README>
<https://github.com/hunspell/hyphen/blob/master/README.hyphen>

Information about non-standard can be found here:

<https://github.com/hunspell/hyphen/blob/master/README.nonstandard> 
<https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf>


## **Hyphenation Dictionaries**
Hyphenation dictionaries can be taken from <https://github.com/LibreOffice/dictionaries>. For example, [en-US hyphenation dictionary](https://github.com/LibreOffice/dictionaries/blob/master/en/hyph_en_US.dic)

Hyphenation of some words, defined by OpenOffice dictionaries could be different than defined by MS Word .LEX dictionary, so we often have to advise customers to add necessary patterns to their dictionaries to fix hyphenation of particular words. 
## **Hyphenation and Justification problem**
MS Word has complex logic of a choosing break point if text is justified and hyphenation is enabled. In short, MS Word may prefer shrink or stretch spaces to avoid line hyphenation.

Most probably, this logic based on Knuth's article: <http://www.eprg.org/G53DOC/pdfs/knuth-plass-breaking.pdf>
## **Aspose.Words hyphenation**
Aspose.Words implements TeX hyphenation algorithm and can reuse OpenOffice hyphenation dictionaries.

Notes:

- Hyphenation distance parameters (LEFTHYPHENMIN, RIGHTHYPHENMIN, COMPOUNDLEFTHYPHENMIN, COMPOUNDRIGHTHYPHENMIN) specified in the hyphenation dictionary are ignored. Aspose.Words uses its own set of distance parameters depending on the document's compatibility mode.
- Hyphenation algorithm in Aspose.Words does not implement the non-standard hyphenation (<https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf>). Non-standard patterns are ignored.
- Hyphenation algorithm in Aspose.Words supports compound hyphenation (<https://github.com/hunspell/hyphen/blob/master/README.compound>), however, Aspose.Words breaks character sequences containing mixed alphabetic and non-alphabetic characters to pieces (words) containing only alphabetic characters and hyphenate them separately. So, Aspose.Words even doesn't try to hyphenate compound words. An important note is that MS Word logic of hyphenation of compound words also depends on document's compatibility mode. 
## **Loading Hyphenation Dictionaries**
To use the hyphenation feature, first register a hyphenation dictionary. The code example below shows how to load hyphenation dictionaries for specified languages from file. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering-Printing/TestFile%20RenderShape.doc).

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Rendering-Printing-HyphenateWordsOfLanguages-HyphenateWordsOfLanguages.cs" >}}

The code below shows how to load a hyphenation dictionary for a specified language from a stream. You can download the template file of this example from [here](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering-Printing/TestFile%20RenderShape.doc).

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Rendering-Printing-LoadHyphenationDictionaryForLanguage-LoadHyphenationDictionaryForLanguage.cs" >}}



alex to mg: hyphenation example with using Aspose.Words.IHyphenationCallback is not present in <https://gist.github.com/aspose-words/9a306a41bb6aea8adfcabf5a575c5718>, as far as I understand, it should be added there before we can use it in this article?
