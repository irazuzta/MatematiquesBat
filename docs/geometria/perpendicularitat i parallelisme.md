# Paral·lelisme i perpendicularitat

En aquest apartat analitzarem les relacions de paral·lelisme i perpendicularitat entre dues rectes $r$ i $s$ a partir dels seus elements característics: els vectors directors, els vectors normals i els pendents.

---

## 1. Paral·lelisme
Dues rectes són paral·leles ($r \parallel s$) si tenen la **mateixa direcció** i no són coincidents (no són la mateixa recta).

**Com comprovar si dues rectes tenen la mateixa direcció?**

* **Amb vectors directors:** Els vectors $\vec{d_r}$ i $\vec{d_s}$ han de ser **proporcionals**.
  
    $$\vec{d_r} \parallel \vec{d_s} \iff \vec{d_r} = k \cdot \vec{d_s} \iff \frac{d_{rx}}{d_{sx}} = \frac{d_{ry}}{d_{sy}}$$

* **Amb els pendents:** Les rectes han de tenir el **mateix pendent**.
  
    $$m_r = m_s$$

* **Amb vectors normals:** Els seus vectors perpendiculars també han de ser proporcionals.
  
    $$\vec{n_r} \parallel \vec{n_s} \iff \vec{n_r} = k \cdot \vec{n_s}$$

**Com comprovar si dues rectes són paral·leles o coincidents?**

Dues rectes paral·leles no tenen cap punt en comú i dues rectes coincidents els tenen tots en comú, per tant si prenem un punt d'una recta i comprovem si pertany o no a l'altra, ja sabrem si són coincidents o paral·leles.

!!! example "Exemple: Comprovació de paral·lelisme"
    Donades les rectes:  

    $$r: 2x - 3y + 5 = 0 \implies \vec{d_r} = (3, 2)$$ 
    
    $$s: y = \frac{2}{3}x + 1 \implies m_s = \frac{2}{3}$$

    **Comprovació:**

    1. Com que $\vec{d_r} = (3, 2)$, el pendent de $r$ és $m_r =\displaystyle \frac{2}{3}$.  
    2. Com que $m_r = m_s =\displaystyle \frac{2}{3}$, les rectes tenen la mateixa direcció.
    3. Vegem si són o no coincidents: el punt $(0,1)\in s$, però no compleix l'equació de $\mathbf{r}$: $2\cdot 0-3\cdot1 +5 \neq 0$, per tant **són paral·leles**.



---

## 2. Perpendicularitat
Dues rectes són perpendiculars ($r \perp s$) si es tallen formant un **angle de $90^\circ$**.

### Com comprovar la perpendicularitat?

* **Amb vectors directors:** El **producte escalar** dels seus vectors directors ha de ser **zero** (vectors ortogonals).
  
    $$\vec{d_r} \cdot \vec{d_s} = 0 \iff d_{rx} \cdot d_{sx} + d_{ry} \cdot d_{sy} = 0$$

* **Amb els pendents:** El pendent d'una recta és l'oposat de l'invers de l'altra.
  
    $$m_r \cdot m_s = -1 \implies m_s = -\frac{1}{m_r}$$

* **Amb vectors normals:** Els vectors normals de les rectes també tenen producte escalar zero (també són ortogonals). 

$$\vec{n_r} \perp \vec{n_s} \iff \vec{n_r}\cdot \vec{n_s}=0$$

* A més el **vector normal** d'una recta ha de ser paral·lel al **vector director** de l'altra.
  
$$\vec{n_r} \parallel \vec{d_s}$$


!!! example "Exemple: Trobar una recta perpendicular"
    Troba l'equació de la recta $s$ perpendicular a $r: y = 2x - 3$ que passa pel punt $P(1, 4)$.

    1. El pendent de $r$ és $m_r = 2$.
    2. El pendent de la recta perpendicular serà $m_s = \displaystyle-\frac{1}{2}$.
    3. Fem servir l'equació punt-pendent:
   
    $$y - 4 = -\frac{1}{2}(x - 1)$$

---

## 3. Identificació d'elements característics segons l'equació

A la següent taula es resumeix com extreure el **vector director** ($\vec{d}$), el **vector normal** ($\vec{n}$) i el **pendent** ($m$) a partir de les diferents formes de l'equació de la recta.

| Tipus d'equació | Expressió matemàtica | Vector director $\vec{d}$ | Vector normal $\vec{n}$ | Pendent $m$ |
| :--- | :--- | :--- | :--- | :--- |
| **Paramètrica** | $\begin{cases} x = x_A + k \cdot d_1 \\ y = y_A + k \cdot d_2 \end{cases}$ | $(d_1, d_2)$ | $(-d_2, d_1)$ | $\displaystyle\frac{d_2}{d_1}$ |
| **Contínua** | $\displaystyle\frac{x - x_A}{d_1} = \frac{y - y_A}{d_2}$ | $(d_1, d_2)$ | $(-d_2, d_1)$ | $\displaystyle\frac{d_2}{d_1}$ |
| **Explícita** | $y = mx + n$ | $(1, m)$ | $(-m, 1)$ | $m$ |
| **General** | $Ax + By + C = 0$ | $(-B, A)$ | $(A, B)$ | $\displaystyle-\frac{A}{B}$ |

!!! tip "Observació sobre el pas de director a normal"
    Recorda que per qualsevol recta, el vector director i el vector normal són sempre perpendiculars entre ells $(\vec{d} \cdot \vec{n} = 0)$. Per això, si coneixes $\vec{d} = (v_1, v_2)$, pots obtenir $\vec{n}$ intercanviant les coordenades i canviant un signe: $\vec{n} = (-v_2, v_1)$.