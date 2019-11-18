set
    i posiciones geograficas del mercado /AS,AN,EU,AF,ASI,OC/
*   j factorias /A,B,C,D/
    q factoria1 /A,B/
    w factoria2 /C,D/
*    k puertos /Bilbao,Roterdan,Amberes,Barcelona,Valencia,Marsella/
    l puertos1/Bilbao,Roterdan,Amberes/
    p puertos2 /Barcelona,Valencia,Marsella/
    t centros de ensamblaje /Madrid, Paris/
;

TABLE
    CosteFP1(q,l) Coste de transporte por unidades desde las factorias A y B hasta los puertos 1

          Bilbao    Roterdan   Amberes   

    A       9           8           2   
    B       6           6           9   
 
;

TABLE
    CosteFP2(w,p) Coste de transporte por unidades desde las factorias C y D hasta los puertos 2

        Barcelona   Valencia    Marsella
    C       9          7            7
    D       6          6            8
;
TABLE
    CostePC1(t,l) Coste de transporte de unidades de los puertos 1 a los centros de ensamblaje

            Bilbao  Roterdan    Amberes     

    Madrid     3        4           2          
    Paris      4        2           3           
;

TABLE
    CostePC2(t,p) Coste de transporte de unidades de los puesrtos 2 a los centros de ensamblaje

            Barcelona   Valencia    Marsella
    Madrid      4           3           2
    Paris       5           3           1
;

Parameter
*Produccion maxima de las factorias1
    ProdMaxFact1(q)
        / A 28000
          B 25000/
*Produccion maxima de las factorias2
    ProdMaxFact2(w)    
          /C 35000
           D 15000 /

*Capacidad maxima de esamblaje de las fabricas
    CapaMaxEsam(t)
        / Madrid 25000
          Paris  25000 /

*Cantidad maxima de producto que puede circular por cada puerto
    ProductoPorPuerto1(l)
        / Bilbao    18000
          Roterdan  18000
          Amberes   18000/

    ProductoPorPuerto2(p)
         /Barcelona 18000
          Valencia  18000
          Marsella  18000 /

*Minimi de demanda del producto final a cada uno de los mercados
    MinDemanda(i)
        / AS    5000
          AN    5000
          EU    5000
          AF    5000
          ASI   5000
          OC    5000 /

*Maximo de demanda del prodcuto final a cada uno de los mercados
    MaxDemanda(i)
        / AS    10000
          AN    10000
          EU    10000
          AF    10000
          ASI   10000
          OC    10000 /

*Beneficio Obtenido por cada unidad
    Beneficio(i)
        / AS    20
          AN    25
          EU    30
          AF    10
          ASI   15
          OC    12 /
;
Free variable
    z beneficio menos los costes
;
*Vamos a tener  tres variables
*  Xi numero de unidades vendidas en el mercado i
*  Fjk numero de componentes que estan en la factoria j y van al puerto k
*  Ptk numero de componenetes que son transportados del puerto k al centro de ensamblaje t
positive variable
    x(i) numero de unidades vendidas en el mercado i
    F(q,l) numero de componenetes que salen de la  factoria q  y van a los puertos l  
    Y(w,p) numeor de componenetes que salen de la factoria w  y van a los puertos p
    G(t,l) numero de componentes que son transportados del puerto l al centro de ensamblaje t
    O(t,p) numero de componentes que son transportado del puerto p al centro de ensamblaje t

;

equations
    obj funcion objetivo que quiere maximizar los beneficios
    prodMax1(q,l) produccion maxima en las factorias componente 1
    prodMax2(w,p) produccion maxima en las factorias componente 2
    prodMin1(q,l) produccion minimo en las factorias componente 1
    prodMin2(w,p) produccion minimo en las factorias componente 2
    MaxEsam(t,l,p)  capacidad maxima de ensamblaje de las fabricas de Madrid y Paris
    ProdMaxPuertos1(t,l) producto maximo que puede circular por los puertos 1
    ProdMaxPuertos2(t,p) producto maximo que puede circular por los puertos 2
    MinMercado(i) minimo de producto que debe de llegar a los mercados
    MaxMercado(i) maximo de producto que debe de llegar a los mercados
;

obj.. sum(i,x(i)*Beneficio(i))-(sum((q,l),F(q,l)*CosteFP1(q,l))+sum((w,p),Y(w,p)*CosteFP2(w,p))+sum((t,l),G(t,l)*CostePC1(t,l))+sum((t,p),O(t,p)*CostePC2(t,p)))=e=z;
prodMax1(q,l).. F(q,l)=l=ProdMaxFact1(q);
prodMax2(w,p).. Y(w,p)=l=ProdMaxFact2(w);
prodMin1(q,l).. F(q,l)=g=30000;
prodMin2(w,p).. Y(w,p)=g=30000;
MaxEsam(t,l,p).. G(t,l)+O(t,p)=l=CapaMaxEsam(t);
ProdMaxPuertos1(t,l).. G(t,l)=l=ProductoPorPuerto1(l);
ProdMaxPuertos2(t,p).. O(t,p)=l=ProductoPorPuerto2(p);
MinMercado(i).. x(i)=g=MinDemanda(i);
MaxMercado(i).. x(i)=l=MaxDemanda(i);


Model producto /obj,prodMax1,prodMax2,prodMin1,prodMin2,MaxEsam,ProdMaxPuertos1,ProdMaxPuertos2,MinMercado,MaxMercado/

Solve producto using lp maximizing z;

