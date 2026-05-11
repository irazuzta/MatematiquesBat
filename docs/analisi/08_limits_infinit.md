# 5. Límits de funcions a l'infinit

L'estudi dels límits a l'infinit serveix per descriure el **comportament a llarg termini** d'una funció. En lloc de mirar què passa en un punt concret, ens preguntem: *Quina és la tendència de la imatge ($y$) quan la variable independent ($x$) es fa extremadament gran ($+\infty$) o extremadament petita ($-\infty$)?*

---

## 5.1. Concepte de tendència i límit

No totes les funcions es comporten igual quan ens allunyem de l'origen. Els tres casos principals de comportament a l'infinit són:

1. **Convergència:** La funció s'estabilitza al voltant d'un valor real $L$. Això indica la presència d'una **Asímptota Horitzontal**.
2. **Divergència:** La funció creix o decreix sense aturar-se cap a l'infinit ($\pm\infty$).
3. **Oscil·lació:** La funció no té un límit definit perquè els seus valors fluctuen (com les funcions trigonomètriques).



| Funció | Tipus | Límit ($x \to \infty$) | Raonament numèric |
| :--- | :--- | :--- | :--- |
| $f(x) = \frac{1}{x}$ | Inversa | $0$ | Dividir 1 entre un nombre gegant ens acosta a 0. |
| $f(x) = x^2$ | Polinòmica | $+\infty$ | El quadrat d'un nombre gran és encara més gran. |
| $f(x) = \sin(x)$ | Trigonomètrica | $\nexists$ | El valor oscil·la eternament entre $-1$ i $1$. |

---

## 5.2. Límits de funcions polinòmiques

En un polinomi, quan la $x$ és molt gran, el terme que té el grau més alt (el terme principal) creix amb tanta força que la resta de termes es tornen insignificants. Per tant, el límit del polinomi és el límit del seu terme de major grau.

### El control del signe a $-\infty$
Aquest és el punt més crític. El signe del resultat depèn de si l'exponent és parell o senar:
* $(-\infty)^{\text{parell}} \to +\infty$
* $(-\infty)^{\text{senar}} \to -\infty$

> **Exemple: Estudi comparatiu a $-\infty$**
>
> | $x$ | $-10$ | $-100$ | $-1.000$ | Tendència ($x \to -\infty$) |
> | :--- | :--- | :--- | :--- | :--- |
> | $f(x) = x^2$ | $100$ | $10.000$ | $1.000.000$ | **$\to +\infty$** |
> | $g(x) = x^3$ | $-1.000$ | $-1.000 .000$ | $-1.000 .000 .000$ | **$\to -\infty$** |



---

## 5.3. Límits de la forma $k / P(x)$

Abans d'analitzar quocients complexos, cal entendre que si dividim un nombre fix $k$ (constant) per un polinomi que es fa infinit, el resultat sempre tendeix a **zero**.

> **Exemple numèric: $f(x) = \frac{100}{x^2 + 1}$**
>
> | $x$ | $10$ | $100$ | $1.000$ | Tendència |
> | :--- | :--- | :--- | :--- | :--- |
> | $x^2+1$ | $101$ | $10.001$ | $1.000 .001$ | $\to +\infty$ |
> | $f(x)$ | $0,9901$ | $0,0099$ | $0,000099$ | **$\to 0$** |

---

## 5.4. Límits de funcions racionals $\frac{P(x)}{Q(x)}$

Per resoldre el límit d'un quocient de polinomis, comparem el grau del numerador ($n$) amb el del denominador ($m$).

### Cas A: Grau del denominador és major ($n < m$)
El denominador creix molt més ràpid i arrossega la funció cap al zero.
* **Límit:** Sempre és **0**.
* **Asímptota:** Hi ha una **Asímptota Horitzontal** en $y = 0$.

### Cas B: Graus iguals ($n = m$)
Hi ha un equilibri. El límit és el quocient dels coeficients dels termes de major grau.

> **Exemple: $f(x) = \frac{4x^2 - 1}{2x^2 + 5x}$**
>
> | $x$ | $10$ | $100$ | $1.000$ | Tendència |
> | :--- | :--- | :--- | :--- | :--- |
> | $f(x)$ | $1,596$ | $1,946$ | $1,994$ | **$\to 2$** ($4/2$) |
>
> * **Asímptota:** Existeix una **Asímptota Horitzontal** en la recta $y = 2$.



[Image of rational function horizontal asymptote]


### Cas C: Grau del numerador és major ($n > m$)
El numerador domina i la funció es dispara cap a l'infinit.
* **Límit:** El resultat és $\pm\infty$.
* **Càlcul del signe:** Cal analitzar el signe del numerador i del denominador per separat aplicant la regla dels signes.

> **Exemple de càlcul de signe a $-\infty$:**
> Calculem $\lim_{x \to -\infty} \frac{-3x^3 + 5}{x^2 + 1}$
>
> 1. **Numerador:** El terme principal és $-3x^3$. Si $x$ és negativa gran: $-3 \cdot (-\infty)^3 = -3 \cdot (-\infty) = \mathbf{+\infty}$.
> 2. **Denominador:** El terme principal és $x^2$. Si $x$ és negativa: $(-\infty)^2 = \mathbf{+\infty}$.
> 3. **Resultat final:** $+\infty / +\infty = \mathbf{+\infty}$.

---

## 5.5. Resum d'Asímptotes Horitzontals

Diem que una funció té una **Asímptota Horitzontal** en la recta $y = L$ si es compleix que el seu límit a l'infinit és un nombre real:

$$\lim_{x \to \infty} f(x) = L \quad \text{o} \quad \lim_{x \to -\infty} f(x) = L$$

Aquesta línia representa l'estabilització de la funció quan ens allunyem cap als extrems esquerre o dret del gràfic.