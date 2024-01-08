# Watch 

## Qu’est ce qu’une donnée ? Sous quelle forme peut-elle se présenter ?

En informatique, la donnée est une réprésentation de l'information qui peut être utilisée dans le traitement automatique. La donnée peut aussi se défénir par un élément "donné" qui sera la source de résonnements et recherches scientifiques.  
La donnée peut être présentes sous de nombreuses formes, que ce soit de manière concrête, abstraite mais aussi on la retrouve dans de nombreux domaines, comme les sciences, le langage mais aussi l'informatique.  
En informatique, la donnée peut être un simple bytes, mais aussi une donnée quantitative ou qualitative dans un document. Elle peut être interprétable, nominale.  

## Donnez et expliquez les critères de mesure de qualité des données.

Intrinsèquement, la donnée ne possède pas de "qualité"... Cependant, dans une optique d'analyse, d'interprétation ou d'utilisation de la donnée, il peut être intéressant de veiller à certains critère pour obtenir une qualité globale.  
- Son exactitude, veiller à ce que la donnée soit juste et vérifiée, pour éviter de la malinformations ou des raisonements sur des bases éronées.
- Sa complétude, il faut que la donnée soit complête ou très partiellement complète, sinon aucune analyse ou utilisation pourra être réalisé sur cette donnée.
- Sa cohérence, car une donnée dans un ensemble de donnée où elle n'appratient pas peut au mieux être inutile, au pire même mener sur de fausses routes.
Il existe encore d'autres critères intéressant à prendre en compte pour veiller à une bonne qualité des données.

## Définissez et comparez les notions de Data Lake, Data Warehouse et LakeHouse. Illustrez les différences à l’aide de schémas.
- Data Lake : Méthode pour stocker la donnée en grande quantité, et de manière brute et déstructurée. L'objectif est de stocké les données de plusieurs sources afin de les analyser plus tard.
- Data Warehouse : Méthode pour stocker la donnée en grande quantité de manière structurée. Les données peuvent venir de plusieurs sources mais sont toute soumises à une organisation afin de pouvoir les analyser et les utiliser par la suite.
- LakeHouse : Méthode pour stocker la donnée dynamiquement de manière flexible et à faible cout. Elle est très utile pour l'utilisation de données fiables et actualisées en temps réel.

Ainsi, On y voit des différences de structures pour des différentes utilisations. Les scientifiques préferont pour réaliser leur modèles des LakeHouse avec des données acualisées, ou alors des Warehouse pour avoir un grand nombre de données structuré. Sans la nécéssité de beaucoup d'utilisation ou d'analyse, un Data Lake est très puissant et viable.  
Voici ci-joint un très réussit schéma des différences, dans l'article de databricks.com https://www.databricks.com/glossary/data-lakehouse

![Compare Data stocakges](schemas/data-lakehouse-new.png)

## Donnez une définition et des exemples de systèmes de gestion de bases de données avec des illustrations.
E. Qu’est ce qu’une base de données relationnelle ? Qu’est ce qu’une base de
données non relationnelle ? Donnez la différence entre les deux avec des
exemples d’applications.
F. Définissez les notions de clé étrangère et clé primaire.

G. Quelles sont les propriétés ACID ?
H. Définissez les méthodes Merise et UML. Quelles sont leur utilité dans le monde
de l’informatique ? Donnez des cas précis d’utilisation avec des schémas.
I. Définissez le langage SQL. Donnez les commandes les plus utilisées de ce
langage et les différentes jointures qu’il est possible de faire.