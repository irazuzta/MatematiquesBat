# Sistema de referència i punts

## 1. El Sistema de Referència
Per poder descriure la posició d'un punt o qualsevol altre objecte geomètric, necessitarem un **sistema de referència** $R = \{O;\{\vec{i}, \vec{j}\}\}$. Com veiem en l'expressió anterior, aquest consta de dos elements:

* **L'origen:** Un punt fix de referència $O$ (de coordenades $(0,0)$).
* **Una base:** Una base de vectors qualsevol (o sigui, dos vectors linealment independents). No obstant això, nosaltres treballarem amb la base ortonormal $\{\vec{i}, \vec{j}\}$ ja que ens facilita molts càlculs.

!!! example "Exemple"
    Per entendre la necessitat d'un sistema de referència, analitzem la següent situació: hem d'entrar a una habitació i ens hem de situar en un punt concret. Per arribar-hi, la indicació que ens donen és la següent "ens hem de moure 4 metres". Analitzem per què sense un sistema de referència aquesta indicació no serveix de res:

    * Ens hem de moure 4 metres, però des d'on? Ens cal un punt inicial des del qual moure'ns. Aquest punt és l'origen $O$.
    * I ara que sé des d'on, cap on ens movem? ens cal una direcció i un sentit. Ja hem vist que això son característiques dels vectors, per tant una base de vectors que ens permeti escriure qualsevol direcció des de l'origen $O$, dona resposta a les nostres necessitats. 

---

## 2. Localitzem i identifiquem els punts del pla: **vectors de posició**
Ara que tenim un sistema de referència, el primer objectiu que tenim és poder **identificar** tots el punts del pla i associar-los unes **coordenades** que ens permetin **distingir-los** i treballar amb ells.  

**Com ho fem?** Per a qualsevol punt $A$ del pla, hi ha un **únic vector** que surt d'$O$ (extrem inicial) i arriba a $A$ (extrem final). Associem, doncs, aquest vector al punt $A$.  
D'aquest tipus de vectors en diem **vectors de posició** i utilitzem la notació $\overrightarrow{OA}$ per anomenar-los.  
**Com assignem coordenades al punt?** Si els components del vector de posició són $\overrightarrow{OA}=(a,b)$, només cal que els assignem com a coordenades del punt $A(a,b)$. 

!!! Note "Al següent gràfic observem com el vector $\overrightarrow{OP}$ "apunta" des de l'origen $O$ al punt $P$. Les components del vector $\overrightarrow{OP}$ les associem com a coordenades del punt $P$"
    ![vector de posicio](../img/vector_posicio.png)

!!! Tip "Si hi pensem, aquestes coordenades dels punts són exactament iguals a les que hem fet servir sempre quan representem punts a partir dels eixos de coordenades cartesians. Això és perque utilitzem una base ortonormal i, de fet, ens facilita la representació i els càlculs. Si la base fos una altra, això no seria així!"

## 3. Com puc anar d'un punt a un altre? **Vector entre dos punts**

Donats dos punts $A$ i $B$ qualssevol del pla, hi ha un únic vector que surt d'$A$ i té com a extrem final $B$. A aquest vector l'anomenem $\overrightarrow{AB}$. 

!!! Note "Al següent gràfic observem com el vector $\overrightarrow{AB}$ té com a inici $A$ i com a extrem final $B$"
    ![vector entre dos punts](../img/vector_dos_punts.png)

Si ho mirem vectorialment veiem que: 

$$\overrightarrow{OA} + \overrightarrow{AB} = \overrightarrow{OB}$$

!!! Note ""
    ![vector entre dos punts](../img/vector_dos_punts_2.png)

De fet, a partir d'ara, com cada vector de posició correspon a un punt, simplificarem les expressions i escriurem: 

$$A + \overrightarrow{AB} = B$$

**Com podem calcular el vector entre dos punts?** A partir de l'expressió anterior, i també si mirem la interpretació geomètrica de la resta de vectors, tenim que:

$$A + \overrightarrow{AB} = B \implies   \overrightarrow{AB} = B-A$$

Si tenim els punts $A(x_A,y_A)$ i $B(x_B,y_B)$, el vector , $\overrightarrow{AB}$, que els uneix es calcula com:

$$\overrightarrow{AB} = B - A = (x_B - x_A, y_B - y_A)$$

!!! Note "Vegem les representacions anteriors amb coordenades. És fàcil veure que el vector $\overrightarrow{AB}$ ens diu com canvien o quina és la diferència entre les coordenades dels punts $A$ i $B$."
    ![vector entre dos punts](../img/vector_dos_punts_3.png)

##4. Punt mig i punt simètric
Un problema que podem resoldre amb el que hem vist fins ara és com trobar el **punt mig**, $M$, entre 2 punts donats $A(x_A,y_A)$ i $B(x_B,y_B)$:

$$M=(\frac{x_A+x_B}{2},\frac{y_A+y_B}{2})$$

!!! Example "Vegem un exemple gràfic amb coordenades:"
    ![vector entre dos punts](../img/punt_mig.png)

Una variant del problema anterior és com trobar el **punt simètric**, $P'$, d'un punt $P(x_P,y_P)$, respecte d'un punt de simetria o punt mig, $S(x_S,y_S)$:

$$P'=(2x_S-x_P,2y_S-y_P)$$

!!! Example "Vegem un exemple gràfic amb coordenades:"
    ![vector entre dos punts](../img/punt_simetric.png)


##5. Quan només m'interessa la direcció: **vectors directors**
Hi ha moltes situacions en que l'interessant d'un vector és la direcció i no entre quins punts es troba. En aquests contexts els anomenarem **vectors directors**.

Per representar un vector director utilitzarem una lletra minúscula com per exemple $\vec{d}$ 

!!! Note "En la següent representació podem veure que la informació que en dóna el vector $\vec{d}$ és la de la direcció de les rectes que es mostren. No representa a cap punt ni ens importa si està entre dos punts concrets."
    ![vector director](../img/vector_director.png)

Hi ha situacions en que la informació que ens interessarà del vector entre dos punts $A$ i $B$ és la direcció. Per exemple, ens pot interessar la direcció de la recta que passa per aquests dos punts. En aquests context el vector $\overrightarrow{AB}$ fa les funcions d'un vector director $\vec{d}$

!!! Note "En la següent representació podem veure que el vector  $\overrightarrow{AB}$ el podem entendre com el vector director $\vec{d}$ de la recta que conté a $A$ i $B$"
    ![vector director](../img/vector_director_dos_punts.png)

##6. Punts alineats