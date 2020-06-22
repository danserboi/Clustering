% computes a clustering solution total cost
function cost = compute_cost_pc(points, centroids)
	  %initializez costul total cu 0
    cost = 0; 
	% TODO compute clustering solution cost
    %retin numarul de puncte si numarul de centroizi
    no_points = size(points,1);
    NC = size(centroids,1);
    %parcurg punctele
    for i = 1 : no_points
      %parcurg centroizii si calculez distanta minima,
      %ceea ce reprezinta distanta de la punct la centroidul aferent
      min_dist = 99999;
      for j = 1: NC  
        dist = norm(centroids(j,:) - points(i,:));
        if min_dist > dist
          min_dist = dist;
        endif  
      endfor
      %adaug la costul total distanta 
      cost = cost + min_dist;
    endfor
end

