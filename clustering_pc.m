% computes the NC centroids corresponding to the given points using K-Means
function centroids = clustering_pc(points, NC)
    % initializez matricea care contine coordonatele centroizilor cu 0
    centroids = zeros(NC,size(points,2)); 
    % generez indici la intamplare
    randidx = randperm(size(points,1));
    % dintre indicii alesi la intamplare,
    % luam doar un numar NC pentru a genera centroizii initiali
    centroids = points(randidx(1:NC), :);
    %iteram de un numar suficient de ori pentru a obtine solutia
    for i = 1:100
        %initializez vectorul de indici
        indices = zeros(size(points,1), 1);
        %parcurg fiecare punct in parte si calculeaz distanta
        %fata de fiecare centroid
        %retin distanta minima si indicele corespunzator centroidului
        [no_points no_coord] = size(points);
        for i=1:no_points
          k = 1;
          min_dist = sum((points(i,:) - centroids(1,:)) .^ 2);
          for j=2:NC
            dist = sum((points(i,:) - centroids(j,:)) .^ 2);
            if(dist < min_dist)
              min_dist = dist;
              k = j;
            end
          end
          %pentru punctul curent, in vectorul de indici retinem indicele
          %centroidului
          indices(i) = k;
        end
        %initializez vectorul in care retin coordonatele centroizilor
        centroids = zeros(NC, no_coord);  
        %in vectorul de centroizi pun coordonatele
        for i=1:NC
          xi = points(indices==i,:);
          ck = size(xi,1);
          centroids(i, :) = (1/ck) * sum(xi,1);
        end
    endfor
end