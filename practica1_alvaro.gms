set
    i posiciones geograficas del mercado /AS,AN,EU,AF,ASI,OC/
    j factorias /A,B,C,D/
    k puertos /Bilbao,Roterdan,Amberes,Barcelona,Valencia,Marsella/
    t centros de ensamblaje /Madrid, Paris/
    ;

TABLE
    CosteFP(j,k) Coste de transporte por unidades desde cada factoria hasta el puerto

          Bilbao    Roterdan    Amberes    Barcelona   Valencia    Marsella

    A       9           8           2           0          0            0
    B       6           6           9           0          0            0
    C       0           0           0           9          7            7
    D       0           0           0           6          6            8   ;
TABLE
    CostePC(t,k) Coste desde cada puerto a los centros de ensamblaje

            Bilbao  Roterdan    Amberes     Barcelona   Valencia    Marsella

    Madrid     3        4           2           4           3           2
    Paris      4        2           3           5           3           1   ;

Parameter
*Produccion maxima de las factorias
    ProdMaxFact(j)
        / A 28000
          B 25000
          C 35000
          D 15000 /

*Capacidad maxima de esamblaje de las fabricas
    CapaMaxEsam(t)
        / Madrid 25000
          Paris  25000 /

*Cantidad maxima de producto que puede circular por cada puerto
    ProductoPorPuerto(k)
        / Bilbao    18000
          Roterdan  18000
          Amberes   18000
          Barcelona 18000
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



