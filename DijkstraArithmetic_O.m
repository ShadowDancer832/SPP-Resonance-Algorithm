function [ Optimal, D] = DijkstraArithmetic_O(Table, dim, ORIGI, DESTI )

[path, D]=Compute_O(Table, dim, ORIGI); % Get all shortest paths (path) and all shortest cost (D) 

cur=[];
V=[];
[Optimal]=print_path( ORIGI, DESTI, cur,V , path );

