---
title: MFontC++での可用性と置換
second_title: C++の場合Aspose.Words
articleTitle: フォントの可用性と置換
linktitle: フォントの可用性と置換
description: "正確な置換フォントが見つからない場合は、代わりにAspose.Wordsを同様のフォントに置き換える必要があります。 この記事では、最も適したフォントを見つけるプロセスについて説明します。"
type: docs
weight: 12
url: /ja/cpp/font-availability-and-substitution/
timestamp: 2024-09-24-14-35-44
---

文書内のテキストは、Arial、Times New Roman、Verdanaなどのさまざまなフォントで書式設定できます。 Aspose.Wordsがドキュメントをレンダリングするとき、ドキュメントで指定されているフォントを選択しようとします。

ただし、正確なフォントが見つからず、代わりにAspose.Wordsが同様のフォントに置き換える必要がある状況があります。 Aspose.Wordsは、次のプロセスに従ってフォントを選択します:

1. Aspose.Wordsは、正確なフォント名を持つ利用可能なフォントソースの中からフォントを見つけようとします。
1. Aspose.Wordsは、元の文書に埋め込まれたフォントの中から必要なフォントを見つけようとします。 DOCXなどの一部の文書形式には、埋め込みフォントを含めることができます。
1. Aspose.Wordsが正確な名前が一致する必要なフォントを見つけることができず、このフォントに対して[AltName](https://reference.aspose.com/words/cpp/aspose.words.fonts/fontinfo/get_altname/)プロパティが定義されている場合、Aspose.Wordsは[FontInfo](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.font_info)クラスから**AltName**で定義されたフォントを検索します。
1. Aspose.Wordsが定義されたフォントを見つけることができず、**AltName**も定義されていない場合、以下で説明するように、フォント置換ルールが1つずつ適用されます(適切な置換が見つかった場合、フォント置換プロセスは停止し、次のステップは実行されません)。:
   1. Aspose.Wordsは、`FontConfig`ユーティリティを使用して、OSフォント設定が利用可能な場合に適用しようとします。 このWindows以外の機能はFontConfig互換のOSで使用する必要があります。 ほとんどすべてのUnixベースのOSには、システム全体のフォント構成、カスタマイズ、アプリケーションへのアクセスを提供するように設計された`FontConfig`ライブラ それ以外の場合は、このライブラリをユーザーが簡単にインストールできます。<br>
      Aspose.Wordsは、データをクエリし、FontConfigの結果を独自の目的で解釈する方法を知っています。 デフォルトでは、`FontConfig`ユーティリティは無効になっています。 次のようにして有効にできます:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_FontConfigSubstitution()->set_Enabled(true);
      {{< /highlight >}}
   1. 次のステップは、[TableSubstitutionRule](https://reference.aspose.com/words/cpp/class/aspose.words.fonts.table_substitution_rule)と呼ばれる単純ですが、非常に強力なメカニズムです。 デフォルトでは、この機能は有効であり、どのOSでも使用できます。 Aspose.Wordsは、異なるOSの基本的な置換規則を定義するXMLテーブルを使用します。 テーブル置換ルールに従って、代替フォント名のリストが使用されます。<br>
**XML**
      {{< highlight html >}}
      <TableSubstitutionSettings xmlns="Aspose.Words"> 
	<SubstitutesTable> 
		<Item OriginalFont="Arabic Transparent" SubstituteFonts="Arial" /> 
		… 
	</SubstitutesTable> 
      </TableSubstitutionSettings>
      {{< /highlight >}}
      OriginalFont-置換されるフォント、SubstituteFonts-コンマで区切られた置換バリアントのリスト。 最初に使用可能なフォントが置換に使用されます。<br>
      このルールの主な機能は、次の例に示すように、独自の置換テーブルをロードする機能です:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->Load(u"Table.xml");
      {{< /highlight >}}
      既存のテーブルをjarから基本として取得するか、次の方法でプログラムで保存することができます:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->Save(u"MyTable.xml");
      {{< /highlight >}}
      このメカニズムの柔軟性にもかかわらず、以下に示すように、それを無効にする方が良い場合があります:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_TableSubstitution()->set_Enabled(false);
      {{< /highlight >}}
   1. テーブル置換ルールがフォントを見つけられない場合は、**FontInfo**置換ルールが適用されます。 このメカニズムはデフォルトで有効になっています。 Aspose.Wordsは、特定の文書に含まれるフォント情報に従って、最も適したフォントを検索します。 この情報は、以下に示すように**FontInfo**クラスから取得できます:<br>
**C++**
      {{< highlight cpp >}}
      System::SharedPtr<FontInfoCollection> fontInfos = doc->get_FontInfos();
      {{< /highlight >}}
      ユーザーは、不十分な結果が発生した場合に無効にすることを決定しない限り、この機能のワークフローに干渉することはできません:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_FontInfoSubstitution()->set_Enabled(false);
      {{< /highlight >}}
      不足しているフォントで**FontInfo**を使用できない場合、プロセスは停止します。
   1. **DefaultFont**置換ルールは、`FontInfo`置換も失敗した場合に適用されます。 このルールもデフォルトで有効になっています。 この規則に従って、Aspose.Wordsは[DefaultFontName](https://reference.aspose.com/words/cpp/aspose.words.fonts/defaultfontsubstitutionrule/get_defaultfontname/)プロパティで指定された既定のフォントを使用しようとします。 ユーザーが独自のデフォルトフォントを選択していない場合は、「Times New Roman」がデフォルトフォントとして使用されます。 このルールは、以下に示すように無効にすることができます:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_DefaultFontSubstitution()->set_Enabled(false);
      {{< /highlight >}}
      現在の既定のフォントを確認するには、次を使用します:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_DefaultFontSubstitution()->get_DefaultFontName();
      {{< /highlight >}}
      独自の代替オプションを設定するには、次の手順を適用します:<br>
**C++**
      {{< highlight cpp >}}
      fontSettings->get_SubstitutionSettings()->get_DefaultFontSubstitution()->set_DefaultFontName(u"Arial");
      {{< /highlight >}}
1. Aspose.Wordsがフォント置換を実行できない場合は、使用可能なフォントソースから最初に使用可能なフォントを取得しようとします。
1. 最後に、Aspose.Wordsが利用可能なフォントソースの中からフォントを見つけることができない場合は、Aspose.Wordsアセンブリに埋め込まれている無料のFanwoodフォントを使

{{% alert color="primary" %}}

**FontInfo**が使用可能な場合、*FontInfo substitution rule*は常にフォントを解決し、デフォルトのフォントルールを上書きします。 デフォルトのフォントルールを使用する場合は、*FontInfo substitution rule*を無効にする必要があります。 ほとんどの場合、*FontConfig substitution rule*はフォントを解決し、他のすべてのルールを上書きすることに注意してください。

{{% /alert %}}


