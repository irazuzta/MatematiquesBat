---
marp: true
theme: default
paginate: true
math: mathjax
style: |
  section { font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size: 24px; }
  h1 { color: #2c3e50; text-align: center; }
  h2 { color: #3498db; border-bottom: 2px solid #3498db; }
  h3 { color: #e67e22; }
  blockquote {
    background: #fdfaf6;
    border-left: 8px solid #e67e22;
    padding: 15px;
    font-style: normal;
    margin: 20px 0;
  }
  .footer { position: absolute; bottom: 10px; left: 50px; font-size: 14px; color: gray; }
---

# GEOMETRIA ANALÍTICA AL PLA
## Un resum detallat de vectors, punts i rectes
### Batxillerat - Departament de Matemàtiques

---

# BLOC 1: ELS VECTORS AL PLA

---

## 1.1 Què és un vector?
Un vector $\vec{v}$ és una eina matemàtica per representar magnituds que tenen:
- **Mòdul:** Quant de llarg és (la seva intensitat).
- **Direcció:** La recta sobre la qual descansa.
- **Sentit:** Cap a on apunta (indicat per la punta de la fletxa).

---

## 1.2 Anatomia d'un vector
Per definir un vector des d'un punt $A$ (origen) fins a un punt $B$ (extrem):

- El vector es denota com $\vec{AB}$.
- El mòdul es denota com $|\vec{AB}|$.
- Un **vector unitari** $\vec{u}$ és aquell que té mòdul 1.



---

## 1.3 Operacions Geomètriques: Suma
Per sumar dos vectors $\vec{u}$ i $\vec{v}$:
1. Posem l'origen de $\vec{v}$ a l'extrem de $\vec{u}$.
2. El vector suma $\vec{u} + \vec{v}$ va des de l'origen de $\vec{u}$ fins a l'extrem de $\vec{v}$.



---

## 1.4 Operacions Geomètriques: Resta i Escalar
- **Resta:** $\vec{u} - \vec{v}$ és equivalent a sumar l'oposat: $\vec{u} + (-\vec{v})$.
- **Producte per un escalar ($k$):**
  - Si $k > 1$, el vector s'allarga.
  - Si $0 < k < 1$, el vector s'encull.
  - Si $k < 0$, el vector canvia de sentit.

---

## 1.5 Components d'un vector
En un sistema de coordenades, usem una base ortonormal $\{\vec{i}, \vec{j}\}$. 
Qualsevol vector es pot expressar com:
$$\vec{v} = v_x \cdot \vec{i} + v_y \cdot \vec{j} \implies \vec{v} = (v_x, v_y)$$

- **Suma:** $(u_x, u_y) + (v_x, v_y) = (u_x + v_x, \ u_y + v_y)$
- **Producte escalar:** $k \cdot (v_x, v_y) = (k \cdot v_x, \ k \cdot v_y)$

---

## 1.6 El Producte Escalar (Definició)
Hi ha dues maneres de calcular-lo segons les dades que tinguem:

1. **Geomètrica:** $\vec{u} \cdot \vec{v} = |\vec{u}| \cdot |\vec{v}| \cdot \cos \alpha$
2. **Analítica (Components):** $\vec{u} \cdot \vec{v} = u_x \cdot v_x + u_y \cdot v_y$

On $\alpha$ és l'angle que formen els dos vectors.

---

## 1.7 Aplicacions del Producte Escalar
Aquesta operació és fonamental per a:

1. **Calcular l'angle ($\alpha$):** $$\cos \alpha = \frac{u_x v_x + u_y v_y}{|\vec{u}| \cdot |\vec{v}|}$$
2. **Comprovar ortogonalitat:** Dos vectors són perpendiculars si $\vec{u} \cdot \vec{v} = 0$.

---

# BLOC 2: ELS PUNTS AL PLA

---

## 2.1 Coordenades i Vectors
Si tenim dos punts $A(x_1, y_1)$ i $B(x_2, y_2)$:
- El **vector $\vec{AB}$** que els uneix es calcula restant:
  $$\vec{AB} = B - A = (x_2 - x_1, \ y_2 - y_1)$$

- La **distància** entre els punts és el mòdul d'aquest vector:
  $$d(A, B) = |\vec{AB}| = \sqrt{(x_2 - x_1)^2 + (y_2 - y_1)^2}$$



---

## 2.2 Punt Mitjà d'un segment
El punt mitjà $M$ d'un segment $AB$ és la mitjana de les seves coordenades:
$$M = \left( \frac{x_1 + x_2}{2}, \ \frac{y_1 + y_2}{2} \right)$$

> **Exemple ràpid:** > Si $A(1, 4)$ i $B(5, 2)$, el punt mitjà és:
> $M = (\frac{1+5}{2}, \frac{4+2}{2}) = (3, 3)$

---

## 2.3 Punts Simètrics
Un punt $P'$ és el simètric de $P$ respecte d'un punt $S$ si $S$ és el punt mitjà del segment $PP'$.

Fórmula per trobar $P'$:
$$x_{P'} = 2 \cdot x_S - x_P$$
$$y_{P'} = 2 \cdot y_S - y_P$$

---

# BLOC 3: EQUACIONS DE LA RECTA

---

## 3.1 Equacions Vectorial i Paramètrica
Per definir una recta necessitem un punt $A(x_0, y_0)$ i un vector director $\vec{v}(v_x, v_y)$.

- **Vectorial:** $(x, y) = (x_0, y_0) + k(v_x, v_y)$
- **Paramètrica:** $$\begin{cases} x = x_0 + k \cdot v_x \\ y = y_0 + k \cdot v_y \end{cases}$$

---

## 3.2 Equacions Contínua i Explícita
- **Contínua:** (Aïllant la $k$ de les paramètriques)
  $$\frac{x - x_0}{v_x} = \frac{y - y_0}{v_y}$$

- **Explícita:** (Aïllant la $y$)
  $$y = m \cdot x + n$$
  On $m$ és el **pendent** ($m = \frac{v_y}{v_x}$) i $n$ és l'ordenada a l'origen.

---

## 3.3 Equació General o Implícita
És la forma més usada en geometria mètrica:
$$Ax + By + C = 0$$

- El **vector normal** $\vec{n} = (A, B)$ és perpendicular a la recta.
- El **vector director** $\vec{v} = (-B, A)$.
- El pendent és $m = -A/B$.

---

# BLOC 4: POSICIÓ RELATIVA DE DUES RECTES

---

## 4.1 Tipus de posicions
Dades dues rectes $r: Ax+By+C=0$ i $s: A'x+B'y+C'=0$:

1. **Secants:** Les rectes es tallen en un punt.
2. **Paral·leles:** Les rectes no es toquen mai.
3. **Coincidents:** Són la mateixa recta.

---

## 4.2 Condicions analítiques
Comparem els coeficients:

- **Secants:** $\frac{A}{A'} \neq \frac{B}{B'}$
- **Paral·leles:** $\frac{A}{A'} = \frac{B}{B'} \neq \frac{C}{C'}$
- **Coincidents:** $\frac{A}{A'} = \frac{B}{B'} = \frac{C}{C'}$

---

## 4.3 Exemple: Càlcul del punt de tall
> **Troba el tall de:**
> $r: 2x - 3y + 5 = 0$
> $s: x + 2y - 8 = 0$
>
> 1. Aïllem $x$ en $s$: $x = 8 - 2y$
> 2. Substituïm en $r$: $2(8 - 2y) - 3y + 5 = 0$
> 3. Resolem: $16 - 4y - 3y + 5 = 0 \implies 21 = 7y \implies \mathbf{y = 3}$
> 4. Trobem $x$: $x = 8 - 2(3) = \mathbf{2}$
> **Punt de tall: $I(2, 3)$**

---

# BLOC 5: MÈTRICA AL PLA

---

## 5.1 Angle entre dues rectes
L'angle $\alpha$ que formen dues rectes es calcula a partir dels seus vectors normals $\vec{n_r}$ i $\vec{n_s}$:

$$\cos \alpha = \frac{|\vec{n_r} \cdot \vec{n_s}|}{|\vec{n_r}| \cdot |\vec{n_s}|}$$

(Posem el valor absolut al numerador perquè volem l'angle agut, entre 0 i 90 graus).



---

## 5.2 Distància d'un punt a una recta
És la distància més curta (perpendicular) des de $P(x_0, y_0)$ a la recta $r: Ax+By+C=0$.

$$\mathbf{d(P, r) = \frac{|A \cdot x_0 + B \cdot y_0 + C|}{\sqrt{A^2 + B^2}}}$$



[Image of the perpendicular distance from a point to a line]


---

## 5.3 Exemple: Distància punt-recta
> **Calcula la distància del punt $P(5, 2)$ a la recta $r: 3x - 4y + 3 = 0$.**
>
> $$d(P, r) = \frac{|3(5) - 4(2) + 3|}{\sqrt{3^2 + (-4)^2}}$$
> $$d(P, r) = \frac{|15 - 8 + 3|}{\sqrt{9 + 16}} = \frac{10}{5} = \mathbf{2 \text{ u}}$$

---

## 5.4 Distància entre rectes paral·leles
Si tenim $r: Ax + By + C = 0$ i $s: Ax + By + C' = 0$:

$$\mathbf{d(r, s) = \frac{|C' - C|}{\sqrt{A^2 + B^2}}}$$

*Nota: Recorda que els coeficients $A$ i $B$ han de ser idèntics a les dues equacions abans d'aplicar la fórmula.*



---

## 5.5 Exemple: Distància entre paral·leles
> **Rectes:** $r: x - 2y + 5 = 0$ i $s: 2x - 4y - 6 = 0$.
>
> 1. Normalitzem $s$ (dividim per 2): $s: x - 2y - 3 = 0$
> 2. Ara $A=1, B=-2, C=5, C'=-3$.
> 3. Apliquem la fórmula:
> $$d(r, s) = \frac{|-3 - 5|}{\sqrt{1^2 + (-2)^2}} = \frac{8}{\sqrt{5}} \approx \mathbf{3,58 \text{ u}}$$