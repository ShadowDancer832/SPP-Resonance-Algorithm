function [path, D]=Compute(Table, dim, ORIGI)
%%%
% Input: Table, an adjacency table
% Input: Map, an adjacency map
% Input: dim, the number of nodes
% Input: ORIGI, the start node
%%%

table = Table; % Safely use Table
path=zeros(dim); % father node of each node
D=ones(1,dim) * inf; % shortest cost to each node
fb=zeros(1,dim);  % fb(i)=1 means node i will not longer be searched
v = 0;  % Mark the node was put in fb in current round 

% Init：
fb(ORIGI)=1; % fb(i)=1 means node i will not longer be searched
%disp('Init table')
%disp(table)
%disp('*********')
table(find(table(:, 2) == ORIGI), :) = []; % The pathes whose end node is ORIGI will not longer be searched
%D = Map(ORIGI, :);
D(Table(find(Table(:, 1) == ORIGI), 2)) = Table(find(Table(:, 1) == ORIGI), 3);
D(ORIGI) = 0;
path(1, :) = ones(1, dim) * ORIGI;
path(1,ORIGI)=0;

while(sum(fb)~=dim)  % Keep search untill all fb(i)=1
%    disp('>>>>>>>>>>>>>>>>>>>>>>>>>>');
%    disp(D);
%    disp(path);
%    disp('**');
%    disp(fb);
    
    min=inf;
    for k=1:dim % Search all neighbours of this node
        if (fb(k)~=1)&&D(k)<min
            v=k;
            min=D(k);
%            disp('Change v,min=');
%            disp(v);
%            disp(min);
        end
    end
    fb(v)=1; % Mark node v
    table(find(table(:, 2) == v), :) = [];
%    disp('final v:');
%    disp(v);
%    disp('  -- table --')
%    disp(table);
%    
    for m = (find(table(:, 1) == v))'   % Search all neighbours of node v
        if min+table(m, 3) < D(table(m, 2))
            D(table(m, 2)) = min+table(m, 3);
            path(:, table(m, 2)) = 0;
            path(1, table(m, 2)) = v;
        elseif min+table(m, 3) == D(table(m, 2))
            pink = 1;
            while(1)
                if path(pink, table(m, 2)) == 0  % If empty here, put v in
                    path(pink, table(m, 2)) = v;
                    break;
                else   % If not empty here, try next row
                    pink = pink + 1;
                end
            end
        end
    end
  
end




