1. ﻿Folders:
1)data: 
	Stores all .mat files. The .mat files record time consumption of each algorithm in different maps.
2)newMaps2: 
	Stores all maps. There are 30 different scales and there are 50 random maps under each scale, that is, we tested 1500 maps totally.


2. .m files:
1)main.m:
	Run it to test 4 algorithm in 1500 maps. Time consumption is stored as output in .mat files, data folder.

2)main_make_map.m:
	Run it to generate 1500 maps. We use Dijkstra to make sure every map is a connected graph.

3)OrderMap.m:
	Change an adjacency table to an adjacency matrix.

4)Dijkstra_Arithmetic.m , Dijkstra_Arithmetic_O.m，Dijkstra_Arithmetic_Ex_bad.m , resonanceAlg.m:
	Guide code of Dijkstra and Resonance algorithm. Where 'Dijkstra_Arithmetic_Ex_bad' guides to the unoptimized Dijkstra-Extend algorithm, which can find all the shortest paths, but it essentially belongs to naive Dijkstra. 'Dijkstra_Arithmetic_O' guides to the optimized Dijkstra, which can only find one shortest path. 'Dijkstra_Arithmetic' guides to the optimized Dijkstra, which can find all the shortest paths.

5)Compute.m , Compute_O.m, Compute_Ex_bad.m:
	Core computing code of Dijkstra_Extend, Dijkstra_Origin and Dijkstra_Extend_naive.

6)make_time_table.m:
	Through Dijkstra, create a timetable as a heuristic function h() of the AS algorithm.

7)Forward.m , Backward.m , FindPaths.m :
	Core code of Resonance Algorithm. Corresponding to the forward, backward, and overlapping processes of the Resonance Algorithm.

8)NodesBook.m:
	Gives which node links to which in Resonance Algorithm.

9)print_path.m: 
	Recurse to organize the shortest path into an easy-to-read form.

10)Display.m , DispPaths.m:
	Display.


