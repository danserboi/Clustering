Avem 5 fisiere .m care contin rezolvarea temei.
In fisierul read_input_data.m deschid fisierul .params pentru citire, iar apoi citesc numarul de clustere. Punctele le citesc si le retin intr-o matrice folosind dlmread.
In fisierul clustering_pc.m initializez matricea care contine coordonatele centroizilor cu 0, generez indici la intamplare dintre care aleg doar un numar NC pentru a genera centroizii initiali.
Iterez de un numar suficient de ori pentru a obtine solutia dorita. Aici, initializez un vector de indici, parcurg fiecare punct in parte si calculez distanta fata de fiecare centroid; retin distanta minima si indicele corespunzator centroidului.
Pentru punctul curent, in vectorul de indici retinem indicele centroidului.
Initializez vectorul in care retin coordonatele centroizilor si pun coordonatele.
In fisierul view_clusters.m retin numarul de puncte si numarul de centroizi, parcurg punctele, initializez distanta minima cu un numar mare, parcurg fiecare centroid, calculez distanta minima si pentru fiecare punct retin intr-un vector indicele clusterului din care face parte.
Fac graficul cu punctele, colorandu-le diferit in functie de apartenenta la un cluster, folosind scatter3.
In fisierul compute_cost_pc.m initializez costul total cu 0, retin numarul de puncte si numarul de centroizi, parcurg punctele, parcurg centroizii si calculez distanta minima pe care mai apoi o adaug la costul total.
In fisierul view_cost_vs_nc.m citesc punctele din fisier, si pentru fiecare numar de clustere(de la 1 la 10) reprezint grafic costul total.
