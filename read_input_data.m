% reads cluster count and points from input files 
function [NC points] = read_input_data(file_params, file_points)
	
	% set these values correctly
	NC = 0;
	points = [];

	% TODO read NC
  % deschidem fisierul .params pentru citire si apoi citim numarul
  fid = fopen(file_params, 'r');
  NC = fscanf(fid, '%d');
  
  % TODO read points
  %citim punctele intr-o matrice
  points=load(file_points,'-ascii');
end

