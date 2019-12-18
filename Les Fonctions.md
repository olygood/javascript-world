# Les fonctions
> ### Nomée:  
> ``` 
> function myfonction(){  
> console.log(" je suis une fonction "); 
> }    
> myfonction(); // je suis une fonction 
> ```  
> *** 

> ### Nomée avec arguments :
> ```
> function myfonction(argument){ 
> console.log(" je suis une fonction" + argument) 
> } 
> myfonction(" javasript"); // je suis une fonction javascript 
> ``` 
> *** 

> ### Anonyme:
> ```
> unction(){ 
> console.log(" je suis une fonction anonyme")
> }  
> function(); // elle ne peut pas être executer car elle est anonyme 
> alors on doit l‘assigner/affecter dans une variable 
> ```
> *** 


var func = function(a){
   console.log(" je suis une fonction" + a)
}
func(" dans une variable");

auto invoquée :
(function(){
   console.log(" je suis une fonction")
})();

(function(a){
   console.log(" je suis une fonction" + a)
})("je suis une fonction qui s'appelle automatiquement");

closure = protéger ses variables:
pas protégée :
var i= 0;
function conpteur(){
  return i++;
} // tou le monde a acces à i= etdonc on peut vite changer la variable

protégée:
function compteur(){
  var i = 0; // variable interne a la fonction
 // on ne return pas la variable i mais une fonction anonyme
 return function(){
  var i ++; // 1.debut de la closure

 }
   // 2. Une closure est obligé d'être affectée à une variable
   var monCompteur1 = compteur; //fonction compteur dans la varible
}

<h1 onclick = "console.log(monCompteur1())">COMPTEUR DE CLIQUES</h1> // on appelle pas la fonction mais la variable
<h1 onclick = "i = 5000"><h1>

on peut redéfinir avec la même fonction un autre compteur :
car autre espace mémoire autre varible i:
protégée:
function compteur(){
  var i = 0; // variable interne a la fonction
 // on ne return pas la variable i mais une fonction anonyme
 return function(){
  var i ++; // 1.debut de la closure

 }
   // 2. Une closure est obligé d'être affectée à une variable
   var monCompteur1 = compteur; //fonction compteur dans la varible
   var compteurDeLike = compteur;
}

<h1 onclick = "console.log(monCompteur1())">COMPTEUR DE CLIQUES</h1> // on appelle pas la fonction mais la variable
<h2 onclick = "console.log(monCompteurDeLIke())">COMPTEUR DE LIKE</h2>
<h1 onclick = "i = 5000"><h1>

autre exemple :
function multiplyBy(number){
  const closeVariable = (anotherNumber){
    return function (anotherNumber){
      return closeVariable * anotherNumber;
    }
 }  
 console.log(multiplyBy);
  console.log(multiplyByFive);
   console.log(multiplyByFive(5));
    console.log(multiplyByFive(3));
