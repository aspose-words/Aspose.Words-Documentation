---
title: A sua primeira candidatura para Android via Java
second_title: Aspose.Words para Java
articleTitle: A Sua Primeira Candidatura
linktitle: A Sua Primeira Candidatura
description: "Instalando Aspose.Words para Android via Java."
type: docs
weight: 30
url: /pt/java/your-first-application/
timestamp: 2024-01-27-14-07-04
---

Este artigo dá-lhe uma ideia de como começar a utilizar Aspose.Words Para Android através de Java. Ele demonstrará como configurar um novo projeto Android do zero, adicionar uma referência ao Aspose.Words JAR e criar um novo documento que é salvo no disco no formato DOCX. Este exemplo usa [Android Est7dio](https://developer.android.com/studio/index.html) para o desenvolvimento e a aplicação é executada no emulador Android. Para começar a usar Aspose.Words Para Android via Java, Siga este tutorial passo a passo para criar um aplicativo que use Aspose.Words para Android via Java:

1. Download e o [Android Est7dio](https://developer.android.com/studio/index.html) e instale - o em qualquer local.
1. Execute o estúdio Android.
1. Crie um novo projeto de aplicativo Android.<br>
![install-aspose-words-for-android-via-java-3](/words/java/your-first-application/install-aspose-words-for-android-via-java-3.jpg)<br>
![install-aspose-words-for-android-via-java-4](/words/java/your-first-application/install-aspose-words-for-android-via-java-4.png)<br>
![install-aspose-words-for-android-via-java-5](/words/java/your-first-application/install-aspose-words-for-android-via-java-5.jpg)<br>
![install-aspose-words-for-android-via-java-6](/words/java/your-first-application/install-aspose-words-for-android-via-java-6.jpg)<br>
![install-aspose-words-for-android-via-java-7](/words/java/your-first-application/install-aspose-words-for-android-via-java-7.jpg)<br>
1. Copie aspose-words-17.5-android.via.java.jar para a pasta libs / do seu projeto<br>
![install-aspose-words-for-android-via-java-8](/words/java/your-first-application/install-aspose-words-for-android-via-java-8.jpg)
1. Selecione a seção projeto (no menu Arquivo e clique na guia Dependências.
   1. Clique no botão "+", selecione a opção dependência do arquivo.
   1. Selecione Aspose.Words Biblioteca da pasta libs e clique em OK.<br>
   ![install-aspose-words-for-android-via-java-9](/words/java/your-first-application/install-aspose-words-for-android-via-java-9.png)
1. Sincronize o projeto com arquivos Gradle, se necessário<br>
![install-aspose-words-for-android-via-java-10](/words/java/your-first-application/install-aspose-words-for-android-via-java-10.png)
1. Para aceder às SDcard devem ser acrescentadas permissões especiais. Clique no ficheiro AndroidManifest.xml e escolha a vista XML. Adicione a seguinte linha ao ficheiro <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE" /> <br>
![install-aspose-words-for-android-via-java-11](/words/java/your-first-application/install-aspose-words-for-android-via-java-11.jpg)
1. Navegue de volta para a seção código do aplicativo e adicione as seguintes importações:<br>
{{< highlight csharp >}}
import java.io.File;
import com.aspose.words.Document;
import com.aspose.words.DocumentBuilder;
import android.os.Environment; 
{{< /highlight >}}<br>
Em seguida, insira o seguinte código no corpo do método onCreate para criar um novo documento do zero usando Aspose.Words,
insira algum texto e salve-o no formato SDCard em DOCX.<br>
{{< highlight csharp >}}
try
{
   Document doc = new Document();
   DocumentBuilder builder = new DocumentBuilder(doc);
   builder.writeln("Hello World!");
   String sdCardPath = Environment.getExternalStorageDirectory().getPath() + File.separator;
   doc.save(sdCardPath + "Document Out.docx");
}
catch (Exception e)
{
   e.printStackTrace();
}
{{< /highlight >}}<br>
O código completo deve ser assim:<br>
![install-aspose-words-for-android-via-java-12](/words/java/your-first-application/install-aspose-words-for-android-via-java-12.png)
1. Agora execute o aplicativo novamente. Desta vez, o código Aspose.Words será executado em segundo plano e gerará um documento que é salvo no SDcard.<br>
![install-aspose-words-for-android-via-java-13](/words/java/your-first-application/install-aspose-words-for-android-via-java-13.jpg)
1. Para visualizar o documento criado, navegue até o menu Ferramentas e escolha Android e Android Device Monitor<br>
![install-aspose-words-for-android-via-java-14](/words/java/your-first-application/install-aspose-words-for-android-via-java-14.jpg)<br>
![install-aspose-words-for-android-via-java-15](/words/java/your-first-application/install-aspose-words-for-android-via-java-15.jpg)
1. Use o visualizador padrão para abrir o documento. A saída gerada pelo aplicativo com apenas algumas linhas de código é assim:<br>
![install-aspose-words-for-android-via-java-16](/words/java/your-first-application/install-aspose-words-for-android-via-java-16.jpg)
