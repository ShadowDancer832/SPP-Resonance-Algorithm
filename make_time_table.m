function  time_table  = make_time_table( path, D, dim )

time_table = zeros(5 * dim, dim);  % rows record max time for edge_cost; cols record node_num
path = path(1,:);
node = 1;
for i = D
  if i ~= 0
    time_table(i,node) = path(node);
  endif
  node += 1;
endfor

endfunction