bubble_sort=function(data){
  data=t(data)                 #udela z matice vektor (pro snazsi indexaci)
  iterace=0                   #pocet prubehu fce for - odecitam od for, aby se snizila vypocetni doba a neprojizdely se jiz serazene vzorky
  while(1){                    #smycka, plati dokud neplati podminka pro break
    vymeny=0                  #pocet probehlych vymen 
    for (j in 1 : (length(data) - 1 - iterace)){ #for pro vsechny vzorky krome posledniho(kvuli indexaci) a krome jiz serazenych
      if(data[j]>data[j+1]){ #pokud je hodnota nizsi nez nasledujici, pomoci pomocne promenne prohazuji obe hodnoty
        pomocny = data[j]
        data[j] = data[j+1]
        data[j+1] = pomocny
        vymeny=vymeny+1
      }
    }
    iterace=iterace+1
    if(vymeny==0) break         #pokud behem jednoho for neprobehne zadna vymena, vsechna cisla jsou serazena a prestava platit while
  }
data=t(data)                    #vektor -> matice
  write.csv2(data, "vysledek_bubble_sort.csv")
}  
