set
    mercados posiciones geograficas del mercado /AS,AN,EU,AF,ASI,OC/
    factC1 factoria1 /A,B/
    factC2 factoria2 /C,D/
    puertosC1 puertos1/Bilbao,Roterdan,Amberes/
    puertosC2 puertos2 /Barcelona,Valencia,Marsella/
    fabricas centros de ensamblaje /Madrid, Paris/
;

TABLE
    CosteFP1(factC1,puertosC1) Coste de transporte por unidades desde las factorias A y B hasta los puertos 1

          Bilbao    Roterdan   Amberes

    A       9           8           2
    B       6           6           9

;

TABLE
    CosteFP2(factC2,puertosC2) Coste de transporte por unidades desde las factorias C y D hasta los puertos 2

        Barcelona   Valencia    Marsella
    C       9          7            7
    D       6          6            8
;
TABLE
    CostePC1(fabricas,puertosC1) Coste de transporte de unidades de los puertos 1 a los centros de ensamblaje

            Bilbao  Roterdan    Amberes

    Madrid     3        4           2
    Paris      4        2           3
;

TABLE
    CostePC2(fabricas,puertosC2) Coste de transporte de unidades de los puesrtos 2 a los centros de ensamblaje

            Barcelona   Valencia    Marsella
    Madrid      4           3           2
    Paris       5           3           1
;

Parameter
*Produccion maxima de las factorias1
    ProdMaxFact1(factC1)
        / A 28000
          B 25000/
*Produccion maxima de las factorias2
    ProdMaxFact2(factC2)
          /C 35000
           D 15000 /
*Beneficio Obtenido por cada unidad
    Beneficio(mercados)
        / AS    20
          AN    25
          EU    30
          AF    10
          ASI   15
          OC    12 /
;
scalar
    CapaMaxEsam Capacidad maxima de esamblaje de las fabricas /25000/
    CapaMaxEsamAhorro Capacidad maxima de esamblaje de las fabricas /15000/
    ahorro Capacidad maxima de esamblaje de las fabricas /10000/
    ProductoPorPuerto Cantidad maxima de producto que puede circular por cada puerto /18000/
    MinDemanda demanda minima de cada mercado /5000/
    MaxDemanda demanda maxima de cada mercado /10000/
;
Free variable
    z beneficio menos los costes
    z2
;

positive variable
    x(mercados) numero de unidades vendidas en el mercado i
    C1Puerto(factC1,puertosC1) numero de componenetes que salen de la  factoria q  y van a los puertos l
    C2Puerto(factC2,puertosC2) numeor de componenetes que salen de la factoria w  y van a los puertos p
    C1Fabrica(fabricas,puertosC1) numero de componentes que son transportados del puerto l al centro de ensamblaje t
    C2Fabrica(fabricas,puertosC2) numero de componentes que son transportado del puerto p al centro de ensamblaje t
;
binary variable
    Puerto1(puertosC1)
    Puerto2(puertosC2)
    ahorroFra(fabricas)
    ;

equations
    obj funcion objetivo que quiere maximizar los beneficios
    obj2 funcion objetivo que quiere maximizar los beneficios

    prodMax1(factC1) produccion maxima en las factorias componente 1
    prodMax2(factC2) produccion maxima en las factorias componente 2

    prodMin1 produccion minimo en las factorias componente 1
    prodMin2 produccion minimo en las factorias componente 2

    MaxEsam(fabricas)  capacidad maxima de ensamblaje de las fabricas de Madrid y Paris

    Ensamblaje(fabricas)  funcion de ensamblaje

    IgualarC1(puertosC1) igualar ruta maritima y carretera de un puerto componentes 1
    IgualarC2(puertosC2) igualar ruta maritima y carretera de un puerto componentes 2

    ProdMaxPuertos1(puertosC1) producto maximo que puede circular por los puertos 1
    ProdMaxPuertos2(puertosC2) producto maximo que puede circular por los puertos 2
    ProdMa componente 1C + 2C = Producto



    MinMercado(mercados) minimo de producto que debe de llegar a los mercados
    MaxMercado(mercados) maximo de producto que debe de llegar a los mercados

    UtilizacionPuertos1(puertosC1)
    UtilizacionPuertos2(puertosC2)

    solo2PuertosC1 solo dos puertos componente 1
    marsellaImpuesto solo dos puertos componente 1

    C125min(fabricas,puertosC1) Los centros de ensamblaje deben recibir al menos el 25%
    utilizarAhorro(fabricas)  
    

;

obj.. sum(mercados,x(mercados)*Beneficio(mercados))-(sum((factC1,puertosC1),C1Puerto(factC1,puertosC1)*CosteFP1(factC1,puertosC1))+
                                                     sum((factC2,puertosC2),C2Puerto(factC2,puertosC2)*CosteFP2(factC2,puertosC2))+
                                                     sum((fabricas,puertosC1),C1Fabrica(fabricas,puertosC1)*CostePC1(fabricas,puertosC1))+
                                                     sum((fabricas,puertosC2),C2Fabrica(fabricas,puertosC2)*CostePC2(fabricas,puertosC2)))=e=z;

obj2.. sum(mercados,x(mercados)*Beneficio(mercados))-(sum((factC1,puertosC1),C1Puerto(factC1,puertosC1)*CosteFP1(factC1,puertosC1))+
                                                     sum((factC2,puertosC2),C2Puerto(factC2,puertosC2)*CosteFP2(factC2,puertosC2))+
                                                     sum((fabricas,puertosC1),C1Fabrica(fabricas,puertosC1)*CostePC1(fabricas,puertosC1))+
                                                     sum((fabricas,puertosC2),C2Fabrica(fabricas,puertosC2)*CostePC2(fabricas,puertosC2))+
                                                     (Puerto2('Marsella')*5000)+
                                                     sum(factC2,C2Puerto(factC2,'Marsella'))+
                                                     sum((fabricas),ahorroFra(fabricas)*ahorro)) =e= z;


prodMax1(factC1).. sum(puertosC1,C1Puerto(factC1,puertosC1))=l=ProdMaxFact1(factC1);
prodMax2(factC2).. sum(puertosC2,C2Puerto(factC2,puertosC2))=l=ProdMaxFact2(factC2);

prodMin1.. sum((puertosC1,factC1),C1Puerto(factC1,puertosC1))=g=30000;
prodMin2.. sum((puertosC2,factC2),C2Puerto(factC2,puertosC2))=g=30000;

ProdMa.. sum((factC1,puertosC1),C1Puerto(factC1,puertosC1))+sum((factC2,puertosC2),C2Puerto(factC2,puertosC2)) =e= sum(mercados,x(mercados))*2;

MaxEsam(fabricas).. sum(puertosC1,C1Fabrica(fabricas,puertosC1)) =l= CapaMaxEsam;
Ensamblaje(fabricas)..  sum(puertosC1,C1Fabrica(fabricas,puertosC1)) =e=  sum(puertosC2,C2Fabrica(fabricas,puertosC2));

IgualarC1(puertosC1).. sum(factC1,C1Puerto(factC1,puertosC1)) =e= sum(fabricas,C1Fabrica(fabricas,puertosC1));
IgualarC2(puertosC2).. sum(factC2,C2Puerto(factC2,puertosC2)) =e= sum(fabricas,C2Fabrica(fabricas,puertosC2));

ProdMaxPuertos1(puertosC1).. sum(fabricas,C1Fabrica(fabricas,puertosC1))=l=ProductoPorPuerto;
ProdMaxPuertos2(puertosC2).. sum(fabricas,C2Fabrica(fabricas,puertosC2))=l=ProductoPorPuerto;

MinMercado(mercados).. x(mercados)=g=MinDemanda;
MaxMercado(mercados).. x(mercados)=l=MaxDemanda;

solo2PuertosC1.. sum(puertosC1,Puerto1(puertosC1))  =e=  2;

UtilizacionPuertos1(puertosC1).. Puerto1(puertosC1)*ProductoPorPuerto =g= sum(factC1,C1Puerto(factC1,puertosC1));
UtilizacionPuertos2(puertosC2).. Puerto2(puertosC2)*ProductoPorPuerto =g= sum(factC2,C2Puerto(factC2,puertosC2));

C125min(fabricas,puertosC1).. C1Fabrica(fabricas,puertosC1) =g= 0.25*sum(puertosC2,C2Fabrica(fabricas,puertosC2))-900000*(1-Puerto1(puertosC1));
utilizarAhorro(fabricas)..  ahorroFra(fabricas)*CapaMaxEsamAhorro =g= CapaMaxEsamAhorro - ((sum(puertosC1,C1Fabrica(fabricas,puertosC1)) + sum(puertosC2,C2Fabrica(fabricas,puertosC2)))/2)




Model fase1 /obj,prodMax1,prodMax2,prodMin1,prodMin2,ProdMa,MaxEsam,Ensamblaje,ProdMaxPuertos1,ProdMaxPuertos2,IgualarC1,IgualarC2,MinMercado,MaxMercado/;
Model fase2 /obj2,prodMax1,prodMax2,prodMin1,prodMin2,ProdMa,MaxEsam,Ensamblaje,ProdMaxPuertos1,ProdMaxPuertos2,IgualarC1,IgualarC2,MinMercado,MaxMercado,UtilizacionPuertos1,UtilizacionPuertos2,solo2PuertosC1,C125min,utilizarAhorro/;
Solve fase2 using MIP maximizing z;

