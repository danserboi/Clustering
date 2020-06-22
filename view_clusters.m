% outputs a graphical representation of the clustering solution
function view_clusters(points, centroids)
    %retin numarul de puncte si numarul de centroizi
    no_points = size(points,1);
    NC = size(centroids,1);
    %parcurg punctele
    for i = 1 : no_points
      min_dist = 99999;
      %parcurg fiecare centroid
      for j = 1: NC
        %calculez distanta de la punct la centroid
        dist = norm(centroids(j,:) - points(i,:));
        %calculez distanta minima si
        %intr-un vector pentru fiecare punct retin indicele 
        %clusterului din care face parte
        if min_dist > dist
          min_dist = dist;
          S(i) = j;
        endif  
       endfor
    endfor
    %fac graficul cu punctele, colorandu-le diferit in functie de apartenenta
    scatter3(points(:,1), points(:,2), points(:,3), [], S(:));
end