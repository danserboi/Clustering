function view_cost_vs_nc(file_points)
	% TODO compute cost for NC = [1..10] and plot 
  %citesc punctele din fisier
  points=dlmread(file_points,' ', 5, 1);
  %pentru fiecare situatie, retin costul intr-un vector
  for NC = 1 : 10
    centroids = clustering_pc(points, NC);
    cost(NC) = compute_cost_pc(points, centroids);
  endfor
  NC =[1:1:10];
  %reprezint grafic costul total in functie de numarul de clustere
  plot(NC, cost(NC));
end