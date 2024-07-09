---
title: Sécurité des applications Web Lors du chargement des ressources
second_title: Aspose.Words pour Java
articleTitle: Sécurité des applications Web lors du chargement des ressources externes
linktitle: Sécurité des applications Web lors du chargement des ressources externes
type: docs
description: "Chargez des ressources éloignées, ce qui peut être une raison de risques pour la sécurité. Jetez un coup d'œil aux problèmes de sécurité communs et à leurs solutions Java."
weight: 120
url: /fr/java/web-applications-security-when-loading-external-resources/
---

Par défaut, Aspose.Words pour Java peut charger des ressources distantes telles que des images, des styles CSS ou des documents HTML externes lors de l'importation de documents ou de l'insertion d'images à l'aide du DocumentBuilder. Ce comportement vous permet de traiter vos documents en détail, mais peut être une raison de certains risques de sécurité si la bibliothèque fait partie d'une application web.

Dans cet article, nous examinons les questions de sécurité communes qui peuvent se poser lors du chargement des ressources externes et formulons des recommandations sur la façon d'éviter ces problèmes.

{{% alert color="primary" %}}

Aspose.Words ne fonctionne pas comme logiciel antivirus. Par conséquent, il ne fournit pas d'informations sur la présence de composants malveillants dans le document. Pour assurer la sécurité de vos données, vérifiez vous-même les documents obtenus auprès d'une source externe. À son tour, Aspose.Words formule des recommandations sur la façon de faire face aux problèmes qui peuvent survenir lors du chargement des ressources externes.

{{% /alert %}}

## Questions de sécurité

Il y a un certain nombre de problèmes de sécurité typiques lors du chargement des ressources externes.

### Déclaration de créance Via des images liées

À Windows-d'hôtes basés, les documents contenant des références aux ressources qui utilisent des chemins UNC tels que *‘\\example.com\a\b*=" seront traités par défaut. Dans un environnement de domaine, cela amènera l'hôte à envoyer ses identifiants de domaine dans un format hashed au serveur spécifié.

Si un attaquant est capable de convaincre un utilisateur ou un serveur de traiter un document avec une telle ressource pointée vers un hôte qu'il contrôle, l'attaquant recevra les identifiants de compte utilisateur ou de service au format de hachage NTLM. Ces données peuvent alors être réutilisées dans une attaque classique de pass-the-hash, permettant à l'agresseur d'accéder à toute ressource en tant qu'utilisateur victime ou compte de service.

Si le compte en question utilise un mot de passe faible ou devinable, l'attaquant pourrait en outre effectuer une attaque de fissuration de mot de passe pour récupérer le mot de passe de compte pour une utilisation malveillante ultérieure.

### Divulgation d'images locales Via des images liées

Comme dans le cas précédent, le traitement d'un document avec une référence à un fichier image local entraînera l'inclusion de ce fichier dans le document final. Cela peut mener à la divulgation de renseignements sensibles.

### Refus de service

Un attaquant pourrait télécharger un document qui faisait référence ou comprenait des images extrêmement grandes – les "bombes de décompression". Lors du traitement de ces images, la bibliothèque consommera d'énormes quantités de mémoire et de temps CPU.

### Server-Side Request Forgery via le contenu lié

Un attaquant pourrait créer une série de documents contenant des liens intégrés à des combinaisons communes d'adresse IP interne et de port, puis les soumettre à un service Web en utilisant le Aspose.Words la bibliothèque pour traiter les documents.

En fonction du temps que le service utilise pour traiter le document, l'attaquant pourrait déterminer si une combinaison IP/Port donnée est filtrée par un pare-feu:

- temps de traitement plus long indique que le paquet TCP SYN envoyé par le serveur a été supprimé par un pare-feu
- le temps de traitement rapide indique une connexion réussie

## Solutions des problèmes de sécurité

Pour résoudre les problèmes décrits ci-dessus et améliorer la sécurité des applications web, vous pouvez contrôler ou désactiver le chargement de ressources externes en utilisant [IResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/iresourceloadingcallback/).

L'exemple de code suivant montre comment désactiver le chargement des images externes:

**Java**
{{< highlight csharp >}}
public void loadDocument(String documentFilename) throws Exception
{
	LoadOptions disableExternalImagesOptions = new LoadOptions();
	disableExternalImagesOptions.setResourceLoadingCallback(new DisableExternalImagesHandler());

	Document doc = new Document(documentFilename, disableExternalImagesOptions);
}

public static class DisableExternalImagesHandler implements IResourceLoadingCallback
{
	public /*ResourceLoadingAction*/int resourceLoading(ResourceLoadingArgs args)
	{
		// Skip external images loading.
		return (args.getResourceType() == ResourceType.IMAGE)
			? ResourceLoadingAction.SKIP
			: ResourceLoadingAction.DEFAULT;
	}
}
{{< /highlight >}}

L'exemple de code suivant montre comment désactiver les ressources distantes:

**Java**
{{< highlight csharp >}}
public void loadDocument2(String documentFilename) throws Exception
{
	LoadOptions disableRemoteResourcesOptions = new LoadOptions();
	disableRemoteResourcesOptions.setResourceLoadingCallback(new DisableRemoteResourcesHandler());
	
	Document doc = new Document(documentFilename, disableRemoteResourcesOptions);
}	

private static class DisableRemoteResourcesHandler implements IResourceLoadingCallback
{
	public /*ResourceLoadingAction*/int resourceLoading(ResourceLoadingArgs args) throws Exception
	{
		return isLocalResource(args.getOriginalUri())
			? ResourceLoadingAction.DEFAULT
			: ResourceLoadingAction.SKIP;
	}

	// Simplified code.
	private static boolean isLocalResource(String fileName) throws Exception
	{
		String protocol = null;
	
		URI uri = new URI(fileName);
		if (uri.isAbsolute())
		{
			protocol = uri.getScheme();
		}
		else
		{
			URL url = new URL(fileName);
			protocol = url.getProtocol();
		}
	
		return "file".equalsIgnoreCase(protocol);
	}
}
{{< /highlight >}}

{{% alert color="primary" %}}

Cet article est basé sur le cabinet d'experts-conseils [rapport](/words/java/web-applications-security-when-loading-external-resources/ise-aspose-report.pdf).

{{% /alert %}}

